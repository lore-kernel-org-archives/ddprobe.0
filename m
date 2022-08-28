Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61AC3208
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F3AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661726452;
	bh=/J6kF3YuWetjcw3fqdmXmbDcfwDuHZjb/s5wry5b6AI=;
	h=To:Subject:From:Date:From;
	b=TpFxhCCOuheayJBSb4sKmdyMFu7Q6d7XuR+gNQD4iqwmL4Swdk4052y8nhsQ+FsPd
	 zE85BBNgJFWD6dF8e3LyHhhbMCy74EhqsTSorplSxyw1du+5Mm2zZck03UyEaortfV
	 40Z63aoMLsdeXl6OfYZiRyhK7v5ROGmfNtOkVkppXEv4MX+F+5DiNOBtiDaxSt95sm
	 jP32+Oh6hiVhZWhKhAW7yfTgRNBUTgvNQ3UaBpTRg41TfTtMGFiGUnuhz/+HOumuHP
	 6B6UyVTqOTeUGDxfdmun/xtMlhBO3FiAP/JobIwZxu7HLNlnpeK+gRVfgMl4ZNzzWC
	 8x9dveGclON3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC92ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172645237.28486.13273562507493161437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f5f6f9dec7b788f75ad8d824f577ade65e76ca65b4f102267734ba6704193b
Date: Sun, 28 Aug 2022 22:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661726452
