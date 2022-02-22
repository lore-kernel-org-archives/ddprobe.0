Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623576946
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645572085;
	h=To:Subject:From:Message-Id:Date;
	bh=48w5TfMefhclzfldCbGRolAU8NQEm/FUws2mEuyaVj0=;
	b=PlmCJC4dtb1YaWgXmtqgEHJcyc234S5oY1VFcdCtYIkx6nrN8Ssxge2daumPsX1x
	bvIWVPQKpI96gDYBNRS/cwuiavywQE/QY9KCIjTzQav81IhobNp2lw92K8ppHE8i9aF
	phEi/KPTlRNZRiKCSTwMnCFiVQcC601SPMpns/cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645572085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=48w5TfMefhclzfldCbGRolAU8NQEm/FUws2mEuyaVj0=;
	b=AJLapaSj/uzK0a0+LXS1/SVGuSEjTRmctAFrG0VTQyPIYRlq4NfrxBIe/PK92IdD
	8b878Ag0El48m3EtIyeoSRAQu15lx/FnJMT38seAQFAo64v3u5oi06GlEawqpUf0Seo
	ac5YVLLCm4jhOdQwKPgQDJku8jJEF1qZIiR5sDQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23bd5478-e468ec16-2e1e-4eae-ab02-e9e67e94b62f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9f74a25be5f32baf1dac388ea767a5903c32f1ef48d67ce673d331a1da92f71
Date: Tue, 22 Feb 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645572084
