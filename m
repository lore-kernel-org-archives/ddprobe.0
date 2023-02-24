Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3A4AD58
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E883DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677268505;
	bh=XiegVXPw6jpb8m4LMTjB8/5btjxQamNd1IuArd6FyFk=;
	h=To:Subject:From:Date:From;
	b=J8I2gdZN/zTjP/hkP/EGSq2YldYO7K2NafOG4Arxp7GdldJp97UbXbJ79x7wttA3N
	 X4BPGaLPhqcDH5kand8dF9yLRpwxKXwSYAwyaqXDhQllJNMyyvP1jqVAfyBctRrCyx
	 r9bB4Qm4Y8Vlowg/Pizgcy0bPWo/QEp1szqLnMxvFjd+wgXg5hdV3NE4f0KkhHv3Q3
	 O9uIctAa/iYMi+nVWypOrtX92PdEWE4FMXGZMhcKYM33WegY5LVVwGarGcjkErN633
	 kijmRlY4MsZB3OT5N/9afQm6do3wa/vHxnmUKvtzKXoSMApI2UKsJIj8XP79Pk+EcB
	 /f/aKeB6trysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF98C64ED8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167726850576.19020.14093594273512964050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5963d93d528e26d1e189d457a1d8a8d2f2bb4ded451a0c73059063a2a79dff
Date: Fri, 24 Feb 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677268505
