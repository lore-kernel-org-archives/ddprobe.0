Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84082F25
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8689BC433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671709887;
	bh=Wxp91eVx8j0+OZ2Br2HiiqrpzDQQVpfoYsqS6aI0w6Q=;
	h=To:Subject:From:Date:From;
	b=N4yii/+Xyz54GrU2hskEjoqLdaJSq2f9FSqoQJkbBpRmRz0TJ5RvoFrLwvqjdKT2k
	 f2QU5nVOaMuy39zJ5hIvRCwhUUbHQMXvrpWnhk2yLFfGbj7gzSPfTtBJV8+DWropNR
	 heUyHuXoJIbbmw68r2eKIg44k92fhKH/d+uSe7SoYMTsmS96WQJ2dxep+hWNjshlXz
	 wdjmFc2+maG9vro2YmBszVTQBGVcWqWoiKuQMDNSAk7HU8gheYWDocbhnkHBujlIaH
	 DoyHbFv7aKTVjBm0In28CsP4IQyMxk4XnvTUanWZK0d+tBS/ITDctiNaPEvAHZ/DHG
	 KcdIG6KeNMvWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6568EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167170988740.31849.3668321361987872995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4743db82eb71e8fe79d44a4f45b378dab2aa582a237120fea9c1e1c13d52e4bd
Date: Thu, 22 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671709887
