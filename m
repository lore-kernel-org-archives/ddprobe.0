Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135251363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 16:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654447139;
	h=To:Subject:From:Message-Id:Date;
	bh=7OhMFk2DLtJi3a9ogd3qc8iwAp1e9zD8topH652Nnss=;
	b=JqNiwi1SFoKYCwRuwUV5fMFATF2qgz2/F/66hoDwczvHLR8VNYwDz4X/SP9Q4dY0
	jaPjqzX2cLNF5v6CsiCCScgURFD/yLK/FLGg/gE6Kr2eDU1lkrtUc90MqXakfu/grFo
	+JGZvEwLSzPd3nx9NkcQrG59byrGxuQ9TsWWWgw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654447139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7OhMFk2DLtJi3a9ogd3qc8iwAp1e9zD8topH652Nnss=;
	b=bqKY1vI1pVF3g+CLTRnuc5olHm8BdTdO7ZVEUQT8M9iI0L4XZcTDG8fDXG/m0Ppa
	nn57z3jY6S/cz6RWVvMapii61CNRBp0k7T4BeRhszFXsS/0IOeYo4IW2o2Oowt9EAEE
	bRISNHqQZl4k48H+Ip3CcC6Kj3EipPhfBr4qbh9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134bbe9c6-d34727fa-9376-4f70-9886-35c868695977-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc93f50a96ac6676b99f425c0e1f77cd3a1fcc2e119834388b9db1b7811714ec
Date: Sun, 5 Jun 2022 16:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654447139
