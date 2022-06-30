Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA59A20
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656556612;
	h=To:Subject:From:Message-Id:Date;
	bh=OUaPI8a5YRHESGBLPPRHkIbru8Vt09w4PSHlyWkXrRA=;
	b=CmbNK57turhO9OkEcvqIRQjEH14OrUIgcrOOP86YWUir+8LOkJtgWBgKmmCvPoVq
	mUR5Gznj5JpetlJIy4vCTy4YQKfdk22BVOqtQlT/R++OmqqRJ/bd42/DZghJlxX0Gh9
	XeBbMjMoT8TgIYI8JGpewiJySQ0QO9xe/ODc3Zsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656556612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUaPI8a5YRHESGBLPPRHkIbru8Vt09w4PSHlyWkXrRA=;
	b=dgAhq7nRB7YdQzR+UJV3wtgQVEiJqy477Atdwyz4RJtkSX4F1JGVTMRH4H7typ7E
	Y+HiiGs28reW20mAzvrorKrbr7EfvzRRxfNrI+daf9PO2LRjlSQedFqQp82sF/jzhXo
	2tkjR5YjO/rJ28QI5dxUQwgM8tyrxCstIPp7lx1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b277ead8-c0b77e19-ca68-4aa8-b2bb-b7c1af1ae9de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a26e87afc722c0b97b643fbebc337e1f705741ff1c8564444cee9d6a9733514b
Date: Thu, 30 Jun 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656556612
