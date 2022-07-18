Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADEF33CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658164613;
	h=To:Subject:From:Message-Id:Date;
	bh=pTZtNXW8nBT/UATttw4zIYrn2GBF7lcfZXlCVpXrQHs=;
	b=bg1V17oONwbNxikjEinsuE5C2oleqHt0MI/wdNgBK3qUmW4AGqOTOlnbL7B/M8x6
	/ySNy+Rv0Fi/6nJgaSHe4bii6nXg0z7jOkF0zxzk9G9PXotnarPuJ5KW2ZMjHZUS1mU
	O5XDRLK7jwc+fv9ZHVIUqPGwFcy1lZiGGwgrZaoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658164613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pTZtNXW8nBT/UATttw4zIYrn2GBF7lcfZXlCVpXrQHs=;
	b=XmBNtIDaNIwOTOPNUQ3hqSkXtCHp/2YnzLb8xvqFgZXiLujzo9oRiA9XOBJ/UnNn
	0vDTlPfzmPIsQNiaQYAv5I4gi4g4IhyZbWaTWPbrgG3pq22btTIE/Rb9IGuNKQLuPRv
	OpET0rXoKNbpyMOp4yjGvUTuG4Yl9O+yEc1SKh90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212500cfe-f3624794-25a6-4ece-84fc-0e447f7b7598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac095caae2c93501923c90db9a1ce5374c0ddb6b8d4dce028113f7768fdfe1ce
Date: Mon, 18 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658164612
