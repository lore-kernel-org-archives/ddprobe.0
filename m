Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65052F3C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D10CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671021687;
	bh=HGrZ4ct+ieOoUc8uhY6R+7Jxj0q2g9hO2Bh1e0XHWp8=;
	h=To:Subject:From:Date:From;
	b=sxBW3nfj3sYf/EP8JO4K3xcMBZEMJ8LyRCD9yyvbgTwxursnuifCJQo2DE77nA1I5
	 voLLaHNrBuZV7adhm/rxrXN/Zct93O1dz5TrTSeYw+NelqgbQznylvX8x8B5czsPbZ
	 UEU/jqxqki4K416aC2J8pra4b6J3+8QoCt7BXk0GNLvZMBQjKB7yLkDq1Y5k6hwYM6
	 VYPVgdzQ2yozfxtzkIl8s3egrE2QreR66lT/7uBoP5uMdI3mZDYF3yHsy4vey7c25u
	 eazCl44f0XZ3xh14Gw23E1znowBXZZAlHcKv4g6koXHaYRdl6+tyTgACn3JIguUDbd
	 FwOIOSJNFNqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C0FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102168741.22942.6082076358059467462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06344ed07b13afc218f903944fde290ea1fe41f321e2bbaaedcc1ed3a12ef01
Date: Wed, 14 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671021687
