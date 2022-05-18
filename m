Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246981852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 08:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652861219;
	h=To:Subject:From:Message-Id:Date;
	bh=syw9RSJcLHxFzP5Q63X9zXE5HjYOcvXXbitnSGc/eoM=;
	b=DL748jHW/XI8rpDhpc+RiCe0O7aBF464ji7JOpvIpR3jT3AU57SkLNVBPErIUJH0
	ZMsVD6aRmFMK2QmZlFdgPuQgCfF38NKK+7SsuqSEY+g76hZcfIT+76+mM9QOaieyVAI
	1EIvyVcWwdPx6jpxM4MWAGkfiTwYsaBD1icq52D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652861219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=syw9RSJcLHxFzP5Q63X9zXE5HjYOcvXXbitnSGc/eoM=;
	b=AliBLNoFvmEV7qDfLzGAYe1n4XOg5XdPBYQToRuCHeShxiYvmSXyMPVK5DPdoiqV
	VR9TTx1+RGpka7k+BDtB772DCkS3j3s+gNcsBUYp+akCHWFEMn0Orjb/Q44sGc/wUdW
	+wPm1u7+OLjjnUOHFV/L15DezrJvoE9EPspJGa5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d634b282-80285ea4-8b96-4086-84f0-6285d75e307c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 105eeedae01accae7a78d6040c60b400b4d5ba94d762586bca4b7fd33298e78b
Date: Wed, 18 May 2022 08:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652861219
