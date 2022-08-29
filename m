Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B381F7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF9FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661772052;
	bh=+hhW6qmLti/99+N5Z0k5Jk6y4MgxgcPVkO7momTcqII=;
	h=To:Subject:From:Date:From;
	b=HoApbF7NBrXl1/ppYyyw8vfomelRE2xY5cQgUl60jj+vEywFg7LBfhsZ2bq2SGAy6
	 ZVU2CPbaCZib6IJsLR213TvRfuBUz7Gba9FqQEUdH/MpZqMAKvlNH3BJuxTM2Yszc3
	 S9xljLrQXuA9epStVPJ3Dha/VUe5vo4vo/lM7FAOeQ9qVpNRzxdwlns6HF4+kQveWV
	 7o81EvSU+b5z6qEwKxa3ApEDH3OV0z97WPWwRAjJIWMnW8rc0Mq1BGYyn1W826t/Lo
	 g2GVXedqeGLnnFJ4UQTfyZ1JJWegCT0AYFNQjIKN9lVwcTkvDyYvMI6aaccmaqy8Xm
	 atD4apAvv+8DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B60ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177205234.15874.7098615436106549128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58af20af971f740958ac02d5bebb71d629c198d71d9ff97cd953dc7f5707447f
Date: Mon, 29 Aug 2022 11:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661772052
