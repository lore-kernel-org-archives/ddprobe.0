Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A58185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93F26C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673130687;
	bh=CdBKgDQUjOPm4gQ+YrnduiyavUBQTfwoXpMCGmZOUzc=;
	h=To:Subject:From:Date:From;
	b=p5c3unOgQZSgY994fHM1vhshYmnHfjuGPnAqhSK3rLueaGtSFUjq0glMA52po7grJ
	 M9dxuBiNsb1Nin6EkofwzYA70j0uv3fAtGHYGHYWeltITkoeHnx3+EeoqwzZupLaLH
	 yzbr77H5hE79Xzola8uvXIwpkj91SmGNvfMKLdV3hsbb4xoE5AvO9h+0m7kKpaJXu0
	 EKgWseQVTmib+XKDoPn80SvIcYiMy1IHl7d5cGeTg6oxCdAQL3yX9+hpy2OzRr29L8
	 oK15l+lzQAse6YBuix/222/rsFuLUMZtvRqePDavFaMsi3kOVZIDw2c++/Ohp2jVce
	 ZWW1Li+Z3Dmsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A97C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313068742.7347.8472097276150658929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc27703e15078669cad09175b8d521483382488fe147b742abe273c4eaeda0f
Date: Sat, 07 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673130687
