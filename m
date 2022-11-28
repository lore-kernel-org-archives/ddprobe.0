Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ECB2C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D30BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669632654;
	bh=ll+rdmegsZwob5tlETHGrjN9Df3u5cn9y6CMYHbxgFU=;
	h=To:Subject:From:Date:From;
	b=KoHgMKaLAzCA3oGeiAV7Gucyd9LGJ8ivhQi+5LngqsTJGEZVGet0QORQVw4tIxH//
	 n2lTZzzDWBPi2q0Akum4T4TqZtR06l2eMcXStRS9DQeDqk83Cn7DxjI5EUnpfd6LQe
	 k53BpO0qkgOrK4dkhBj+fqRVRToz3mOQl0GfSI7GkCAg7dyoEPUK0kkbgB7VlnRUit
	 qd2IfnhZuDoawID/w/RgDryv8mZ/pjO46K3ze5iOE+guwCMpm0PJ8T2ldZYvqNrO7o
	 qPxcs7t4vZRjA/C/zhzWw9i2HX+REYO8WxO4QufjRpSWYfQvBlaz8Xi8TLCEKjoRxx
	 2oOgeAyNQVGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516F6C46467
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963265432.20350.16594241921452041044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557494e4dc3877a472e6049a73cb00b3cbac4be4a988d24cd4671b68bdf91780
Date: Mon, 28 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669632654
