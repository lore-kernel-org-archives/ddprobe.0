Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E5917EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78429C433F0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673428887;
	bh=LQeK3Zbu/x40jtLYuYpwgoymWOP3VhLkkIryq4y1tdI=;
	h=To:Subject:From:Date:From;
	b=kL4ggeC41uDVobJVL0Bf0yeS5C6YU5fydRoVxKbcc6lEN3iI1MaYAupdKlitTGF+4
	 U+854hsFWsiIIbJV4NO9yonAd3EMiAQ582TO113j9x2e+2zGHVF0zfOEcZfEEkQ6/G
	 HopNoJ2Lx8fLNBUnDMTWx1PF4ogeuhLa+ggEOHQ6TNENQHRorg0KmCLxiwkfKcIYYA
	 P4WRHn1nLzlCcqAeigph5tCftlNHxOYta01X81m7OlRGH3RFrtV8fU4hrXyCtz80py
	 albYyQQLvgOntVKbeZONRi/RFTNJ/HvSwgUZrISG+QoBq7AypOSjQFNWdmmvp2LbD2
	 JW+QxDHz5Tmsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60170C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342888738.24364.11323944078573266167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410f09be02c42f9a8fddb93c0e467f758e8682dad15c203ba8a5fa0cf7c793f1
Date: Wed, 11 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673428887
