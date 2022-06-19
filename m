Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA17B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 10:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655635139;
	h=To:Subject:From:Message-Id:Date;
	bh=RDPAfT4Itn6Y5EaMcVbKM+Tmulwv4WxzgCcuX95FS/c=;
	b=iNT2rN/JLXrHTEGzpdiDjyULX72koQ7dPNSIiDN8/A7uSd0zMbDUnEEQrkvK3tqB
	y0Jhgo5WUS9c+JDCiByvkERfuD/x2qDgF/sx+tSU436+8OO4D4U6dMirYXQWB15jfzG
	+TXYp/10BosJ68EFz9aImXdVe6JuzkBj2i4ex4GM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655635139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RDPAfT4Itn6Y5EaMcVbKM+Tmulwv4WxzgCcuX95FS/c=;
	b=KCfwlQTwq87VjmAdkJKZS2XlRuA/bKQ8CGjXCuJQ/nEwhXzI1WFiKgwVJbiNkVQh
	KCJe/pTlfpPUSrrU0B+TPvoG7aMK0fJ+wIYQNTcgTybHn+Xu0FpVeiEG4r1+0FvCTCj
	eMOlmCBw+tBBME3qOoQ455a8ylXb9dMiAUbn0Twc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b8b5ad9-a1865f25-c1fe-4663-bf4f-2aaaed5139e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3def18df22649b24e2ba57dc307afae59d4f0cdf3d6e06d61aa31f0cf644de7
Date: Sun, 19 Jun 2022 10:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655635139
