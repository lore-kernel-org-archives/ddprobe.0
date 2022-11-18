Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB26929A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA50C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668772254;
	bh=WREZ9mMSdlhN6Y6bN2s9j9HM9SnRnRhaYBqZnSGHmC4=;
	h=To:Subject:From:Date:From;
	b=OpMTgInPo6Yma+KQd8oySC6XC/YKq6E0VeSQWO5nKTMpnqjsez/YAgVARhCcZPZcr
	 U5GFhmqUNuP7uXwgmQvjhA37915qQBFniMTUViEsxdAFiTQn7ge82HZ2MSN/AarDh7
	 ZbS06eNHaqkPFMgClzikPfLu/emPSXAW9VCdcAAY2ya3vjbkU0pbDdqK8iGaE6OcKm
	 8BHjrqI5dNtd1z2OSH4GJsRYK8v0amG84R+0felnGKgETyNImIy/4f6nSYCMMhmVkt
	 qxthnp2cx1sKZxgqLLAUgg8Yax5X887/xIupHN5VqKy20AKofRhG7OZuNKrSaWlBWF
	 C4qg8CPR+yQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55730C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877225434.2307.17521969514147692122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0ab8498fcb7f695033c14406c60041a148e4cdcfa22cfdeeec3fe9475e8b84
Date: Fri, 18 Nov 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668772254
