Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4BF4403
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660077652;
	h=To:Subject:From:Message-Id:Date;
	bh=oG/4brBCCALRbwD0cheLG/ClZTo0KFnecxcsk8BR/Qk=;
	b=DlOIFi/4sPrj81kfmB81X7zMXP83yOhpRGSJTodjBFKdid/HW+HjMWj0u7U/RgIj
	Xn3MnywdUDil45U2KT/ZOjW5XFB+ocvi0zD6bST6R4ISkoEy/NpDoAiW2wd9kughG8p
	yM+eVTHoigKf5R/1ZyUENqaswQEOGcpHa8veTIAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660077652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oG/4brBCCALRbwD0cheLG/ClZTo0KFnecxcsk8BR/Qk=;
	b=An0uT0Y+txWjfCxtZwRcUFbeX5iyyRucALq5Fril/9rx0eq90M+3J3Os5YH2f/Z1
	4RHHqGrR/IwChcFQw/O9Cv2+HQPLdHLj56aOsPAzeFxtS7UEGDaWe1eK6ckrCVCWPHx
	ROdfpm0D3+59OuNNGK4Pkpd9jVQHJURWF93yFO1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828456ba38-0e5abab1-42a8-4b50-810b-4fc0ad0e1108-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e47b2b14a3dffb5d3dee14a036195eaedda1fa0df806a1ba32410d2a0ac40142
Date: Tue, 9 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660077652
