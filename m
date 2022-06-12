Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143EF7FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 07:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655017559;
	h=To:Subject:From:Message-Id:Date;
	bh=NZP8jclmQxM/I9LeNcYsnJoVFm4W7/OrNOjES+afPpw=;
	b=KMtpotT9dasIKcnkaPVOdj8fegO22iTiVxDk5wYGDNmZZd/wEkGHqg9FQj9EayJq
	69AC3BbKQCfM2c3TIxRqOabJy6tLgtDnTBwufmeDPU8sdWuniQ7oOp6FE633kx+hUn1
	RbsNaI//WE+dZzRnBpRtIdC2qMV9yHE3evCkJbjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655017559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NZP8jclmQxM/I9LeNcYsnJoVFm4W7/OrNOjES+afPpw=;
	b=KoF4HBSINkIi5BgO4YBDEX2FPtQM8KzrRMFXGLjZEIS0xs+zIi2qMrY8/g8Cr7X+
	H/RO3V1R5E2SZqUUP0Cq5tTgnGIqs34dNshgsZdwbEQtOLV8pMK7lAF8jCAG8jGB2X6
	IvKeMCWRzrvW7UpMYPHZFQYjr8slwrdrlR4sDyog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156bbd4ee-e46a1588-f15d-49a7-89d8-210d4f6639f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23752a136a6cfe28e000c136494018b2775b241b125332b1c99653fed10005fc
Date: Sun, 12 Jun 2022 07:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655017559
