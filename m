Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0FD625
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE54DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688357768;
	bh=GcCnm83q/ch4wofOKyS5/sh/2q5ZB8fS1NrOEYA/s8s=;
	h=To:Subject:From:Date:From;
	b=OdG2G0YPk5g289kqW0E1ITfyT6oM/2rSpRb97wd22FXcVIBMjpHzOJQy1qYh1le0u
	 idZS5CgYWnX+0Zn3c1vbRMRZEh+UHnt03sZcTxmoh49nBumK5L/93LFB19x1yDY7AB
	 lweiUlrDcoDj+q0Voma4vVmiOsNEy7sbQUTLbj+8IHPp5EeYhOEv7BFXQK50onyFXS
	 2h8Wbv2Wv+ZnYfmCy6Wx9yXLN37UmxYsORKvSoovZUvHH6Ef5yhpUo3ME9p7fChQeP
	 IfqBR5OPp7MbZxF1uxu0GcTGKzH6cSkt4Tk17mKbt2k/KhGNGwh9l6U6feizEiAsqP
	 b7chEYSMXx4ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B731EEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 04:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168835776873.22608.7812082703013524175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e971a52ab18abbb4c2ceae38721ba915819d51db6dd9801f6c1ded726cb1adc
Date: Mon, 03 Jul 2023 04:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688357768
