Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03647E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63810C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665234053;
	bh=imOUANgnCobgk1bjcjO2r/C+YP9RbD09cofnqM0d500=;
	h=To:Subject:From:Date:From;
	b=aav7RYm3brwV5ZqPMXVeVQRGg24j8bK6SiGk1HmA4ZISojK8l2nNELaRm36Q9XrlK
	 roqB3jTepipPil76HNFFbD08dZn80gK6msZLWpkpiuYo3BwLxKWFclHicPtqJuUG+A
	 ouYa3FTifMRa36Hp/hSV2B+rNcskESTNk0oFi+Uwoz+2QWla3EQlqsAZMkcl9a+gJd
	 CHOq6dkvvcWGM5SS18wGijEKTj700C2aIuU0rlbZ/S8Gv6rJ2pX5QPCcRUeVx4HJjT
	 SJJv6e+COYi79xpoSRF4rBNoOVm/PItmadroAdcR5k6I056MMu0FGcmePyx+yXGjHW
	 dN/hauyNjJzew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBBCC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523405331.5058.9125508339571289164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a26a529a2cc92ecc5387ae49d39c2c17e89d323adb612bbe01fc01ac069f29e
Date: Sat, 08 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665234053
