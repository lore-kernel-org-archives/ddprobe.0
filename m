Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E977646
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661079052;
	h=To:Subject:From:Message-Id:Date;
	bh=YUrk+x0Yzd3GG48ycH8dArCnK5v/VL70877Ct7JJlrc=;
	b=OQumc/EaNaHGHNhMCeKK7IGPQmNapd9Lj52PTll1qbieTpYMYwBIqp3nmtDYQ12m
	WnmSenEMpko0IryJyRLWyofbNPK9bwm4zTrR10TCj13/h8WZoTxWPjL5G8+WnW1XOTK
	m4ec5BDwRJp3H2luurmvhDvvCXhW7tcEIy6ssmL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661079052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YUrk+x0Yzd3GG48ycH8dArCnK5v/VL70877Ct7JJlrc=;
	b=ef/sz9A3qtwe1vLbBGe3Dv7GKa7SP22m1j4gdKDGTIhb834yUFZQq0bDrCjLZJv1
	yinlM0Ybw3e8c8Ku5GjQiT9HLIRGtsWwgMa0XVAW2CtOuE5TdY0pQ17iBb89A5D+BIm
	fe6eBnLWP8z+wjTsdO6aYiSQ5fMkVYfnvkkk2Wuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c006e128-45a3f242-d2b0-44a7-a735-bbe153e1f827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b762af5332bd7de4bf5dfb6446c0c9e7d92c0ce2c54c520e1fcbd842ef816f3f
Date: Sun, 21 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661079052
