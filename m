Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F622C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759FFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666464053;
	bh=E1yY7jcI+NbdJWyO3D0crV+AvYmI0TrHbbAiXuwtEkM=;
	h=To:Subject:From:Date:From;
	b=jv+KBkH2ZGHK84QMySWA+ziLKZxkXe9kjtnxoXquyNableMCP3p3lrn8KyepAH5WQ
	 HSoW2+9owlA61mzix0lpP1m7/rfYPBkTz9e8dbI/JCLopMV1aauhVFH4NHUz8pyAl6
	 FfM992awron20Lp8vUFnFRlpqcUJcxee3hYX2cyMMTjGNx3JakbeSCs4rNZBkOUEVt
	 FGf2rQ0RL0vYF77lQdRON+/7o1raHbe/G+86cV35zDiypOG6Q+TMwtyLth7fJCwj/f
	 auBgfuBj/8i6LCmCTECh8NzMt81qLNkvBqcN7UoGY8aVS4lrvZX8sIqam/j3Abi8xa
	 lql2oPZRqbSvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586DEC04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646405334.32574.6782283303299959002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6fd9545062ca39a281ab4b2bf769f92ac308e4d2ecf3eea1c7de6558ff9f31
Date: Sat, 22 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666464053
