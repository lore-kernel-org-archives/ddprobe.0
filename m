Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09A72CA2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC27C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668763254;
	bh=dE0jQaaMLxFx/J2XRRq9ybZtGFOnS4Qrjs9u6ID3M5s=;
	h=To:Subject:From:Date:From;
	b=oJrPtoaaZAqtA5G1etGeoQecY4D+pOtghXMB2a1LMifeIa0ptWbJ9vCaiyzzT9+8i
	 t8+Wc5u1CRXHqaZb1X+C82K+IObYluExZ0hUmEqzfUFrYamEy7jJW12Q7yHHNeDiKh
	 VHtYt9Ri36DbUMkq8I1Zf6lSUWLk98Bupj+pO3DBqnGt4d8UMnvsJf84hbsqNUJKLN
	 rKF9FrEnPPm3VnNVh5g6C0ONqjCMeTm4xS1lxn8p5xifz4o2JKVvDKkKVgDBRyzIc/
	 zanYDrXPJ7kVQJa/zxfTTHroW4IL1ly3xbg6petjbEAb9l0jyJAfy/RCJ0zHQIp6vz
	 ZQrAcwj3ZkX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6470DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876325439.7023.7977258686530879793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd1aae5c102377bc2b8008c586745dde526174b0da113225af86585456dd12f
Date: Fri, 18 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668763254
