Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E518F20E8
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 03:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653191159;
	h=To:Subject:From:Message-Id:Date;
	bh=ODTVi9olgfrFx3nczFPlv8sqYAuheKSW4vjJaf7K8tA=;
	b=DK/hCnia8W/Na3FTgovJyPkhJ5n85gUYur1zXr1RaU+GCxPPaHYX1t6v0PtTwn4v
	FhdqWRdE4v0RC+XMRGzXs2FXD7Js0yRMhxSWG4hTo91luK7Utk7W77zxOHIn0Wq+x4S
	U9NN/K4H4rhH43YktY8oHaqd86tyYG2CXCFUWu98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653191159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ODTVi9olgfrFx3nczFPlv8sqYAuheKSW4vjJaf7K8tA=;
	b=bUnQbgrGhyKYKTDZSTt9UN0WDCjbsUAZGHIrEfiC2Ljckx9sU8k+oODhKPOe6+81
	9kaVnbHUehZSErNoH7D4HlQ96TzuRKtyiRDaVWCne5WrhbEudVlrWbGVLsHB1aFIVGM
	Z4INFBIvjoxhsXymvTKIKbbJkfR+L/xUCTfdNGHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e9df2dbb-6e45ae23-b477-4693-8fbf-c336f5acbb1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf9fa0573a3d8b5de18474b203bdb658b6cd808eefd9b695d3277913081c9af3
Date: Sun, 22 May 2022 03:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653191159
