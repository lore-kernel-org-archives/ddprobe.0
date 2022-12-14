Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC825192
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84842C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671059487;
	bh=RzRhWk0JqnygXuHneWqIjBMOkWH+Ns//fvNlgQ6moHg=;
	h=To:Subject:From:Date:From;
	b=kXUPMR/lkVlyhykdzi1Zpe31CR3uay1ZPBZPdUHSao9VPSEtjfqpYkIalBvbEOo46
	 4/Z8/YwsUebM7bl2MyGbeWFhLDC6zpmedHhoB2yGNYJJKBeB9fgJ4lDQdjFeaIZRND
	 UB7zpw0k08Eu/xPS6SyF2jKvTZVRWZpmYb2jBhzrrhJoHN9e0keq6dkNiKB+9txvVm
	 iRKGk0R+qAcq8PHJOGp7qr6Mtrtkac/ExqDu4Iht3ojoiIWiWrBAIFv63zQJS9SAJG
	 w+zpm9+j8mBbIyCY6Vh7l3NzERwY8PXWBgkp3JN2o756t7RM++u2c2LkfyN4pFkuOo
	 L/tEfdTVQSf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7C6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105948743.7545.4515516100270634049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74c808cd120724b1d906e211515887f2aa20ffa93bf38e68e65196d454b8414
Date: Wed, 14 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671059487
