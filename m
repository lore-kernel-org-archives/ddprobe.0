Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87D87B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5ADC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665886253;
	bh=AZPAU2zEaCQRRJv3AdMKEjiXFsz4JuO+NqEr8Xz0sXU=;
	h=To:Subject:From:Date:From;
	b=XGYl9hAdvBwRW/GPf301Na2f6biOwCxtoG3ZQMJvNqqNGRYSMGc99RLoyEoEFds19
	 ItjfpO0GcFnFr7aoj2OMoxpzsYF1RkwmqPNkfqx+9oG81W5clhbc5r+R9W0AS82FLS
	 a3ncZIyNMRk1W4Fqc9v1mFa6qWSKYuGg2zE0+LQpMfSrCwt/8+XNKnW7Sub4C+korD
	 Vzz/GY3izXDxRZuhKW7ByYAlY0PWrIYvhaeGqDYSmNnT4ay4YqmHdmZNSMndpP4Zk4
	 wRxTemCfvOQaEDsanM0kpPt1Q/W0rxPHDWqh5q7sttRgbeO6VkiFwPLRr4TDd0XugO
	 OAYZNSGhBSORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510F2C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588625332.9921.3327003303561899530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9919713c017ff3c5c53bc53b18bb2fba2080d1943dc4fbed766fd700435940a3
Date: Sun, 16 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665886253
