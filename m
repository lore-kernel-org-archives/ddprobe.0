Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266344C78
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 20:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655496059;
	h=To:Subject:From:Message-Id:Date;
	bh=qd/U6pBFmOLS07iFA/2ABya9z6bNKt5jkRG9TkUBL/k=;
	b=Bkk7FQWIYmetQ//qRTpw5jUgU5p17p52+ItAFDJpzhoFm6ChUIKgGpeePWyNGoi7
	FCDDA+O6/QNoEknRrbE8q/1NLRUoYZvkbZAPdZqKF3LvOCY2+p7x/ImDkp1oSlIgkb7
	mDKhlSxWgdzjvJiTIeU32UV2zpGNA6y3QG5NaHDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655496059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qd/U6pBFmOLS07iFA/2ABya9z6bNKt5jkRG9TkUBL/k=;
	b=aCuRrJ/h+ZqTIx3O+iqTIkJxBtHvEb9f2Ya/Us+e70h86W90t+MLzcRY5aRVtn5G
	2cyv2v2zDLsZIpPRujCxolyoqTfwzPgxkq8Pj5Yt9IuWCOHzsfSsiup0FkAVgNxW36B
	SHXMmn1g0/gC21Ow5zgE/HMQOkvDk2uUm5RruTWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817341299d-25075c58-5247-4167-84ea-aad350992af9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 628ab10c20a2360124816dca651b80e9a28a87026c6df2c86b375001b613aa91
Date: Fri, 17 Jun 2022 20:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655496059
