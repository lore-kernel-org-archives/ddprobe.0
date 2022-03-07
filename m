Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA213674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646653585;
	h=To:Subject:From:Message-Id:Date;
	bh=osdzDbeSBhCtR1uY7sxyeniFopcRef7rZiCsfE/CnL4=;
	b=dLS2KqiZ58U1ujMClYIRQrjQQ+tmpfZNcuZFeNB7CiXMYzNvhpDkSrMyv7NVe3n9
	j49myeQM14/95Av1//P96KC4op1Yvt06i0tHIZcEHS2BKCns/8YItmDYe2TaRNwyFH0
	ZUVRd+9v1rK0q8UdII/ZdioUragiHJVtUMqs4vjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646653585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=osdzDbeSBhCtR1uY7sxyeniFopcRef7rZiCsfE/CnL4=;
	b=JA30dKX/AESVEJHQMSpPgqezpt7DSowvfsmV6fE0thifcHohdTFrsE/km8IxRT5d
	0hcS+YQDxsUVLAq6wzZSuEAmeEf5yKLHoR9zELVeh99QZFSzIqw5iPpGK9jWsi7yH0O
	bKYqyIaWzMpQap1p5j3p3ZZq4nUUtFJ+KUc0MZRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6433b59a-cfd5e4eb-107e-4cb3-8a87-76cecb95b3bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f97b1ae375781a90855695d5ea4d4f7285db9a712dd417814dd643655804c7
Date: Mon, 7 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646653584
