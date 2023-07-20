Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6528B18C12
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FC8C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689867728;
	bh=nF4MEB6eSSNAFjDvKx+c6AfF2R1R+CT2AavkG8XErdM=;
	h=To:Subject:From:Date:From;
	b=Y+wJjn6FZlB1j9HqG5fHcK+MdL69QWJDugUHUk071tpcYVDkSZ5v8rvWZ+ulUOsM3
	 7ELoU4dXE1flH5dOBqhnjg/2v0rjtXsTGYb2nFEZhoIU4QVCaPb/vyFbLAtdhriV2c
	 KYsbwnwwvx9pfw71u/j32uAjJh6EEWTrauD2nY0vdOEgivJiPnmL+iwUdotXnZ1dJh
	 zKebMg7dlf8CdLUMJSisZVTjBRi69wbp3GEqgXaNgKpg88ifPhR3vw1gXWyhF8ytlr
	 ImmApab6+s5hDOS2Fg9ZYfJHgA+4dT+NLb3E2a6b04QTzcUl/EBpDLmCK2e8R+/c4h
	 prg3f/4cPE/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B951CEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 15:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168986772875.29480.3488888815084330604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc292f4f14cfdbfff1c40e573d69b88ca5e03080d66bd7f0865633ca49380c4
Date: Thu, 20 Jul 2023 15:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689867728
