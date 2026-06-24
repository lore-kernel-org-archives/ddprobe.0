Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BB912C534
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782299254; cv=none; b=e+kyFz19JTITfw6vVAPFcgR+nX0QoR2kfhC1c+gFVtfC9bkPRWnyft19ix4+vV4rP7xyRcXAiPw8iPkMt8w6ZKGt2PJrsZ2Zpnc0pUm3SVQjR2xpSnzU6Ibozv09HHwOxPYj3DZMn1CDRhkPtxjT2qzJdOR2xuea9GDv2kK71CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782299254; c=relaxed/simple;
	bh=98EdnBQLgR5GQF1e4QFopPMbIUX10LijeXxV38PpV4c=;
	h=To:Subject:From:Message-Id:Date; b=hN7bmQLQ6VtsvqzECx32P79S7Pirolj9S5/Lyy6aBbltnh/FNI2eStzC0JqSHp4cSIg/++J+jTs5YQ1QnXwhKJFKMovdRfD9Or7oNHq8wJrH/UgqzabgGidikfogJ0cfs/Mly0F4ZkJTi+e+g2/KJzOHr3BWHfiHKV8flfH+oPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHjP9zU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHjP9zU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6DEC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782299253;
	bh=98EdnBQLgR5GQF1e4QFopPMbIUX10LijeXxV38PpV4c=;
	h=To:Subject:From:Date:From;
	b=uHjP9zU3LE1h00EGbvKinahH1j1MKvEqz65yk884s45WvrXwIxhc0TB+XgrlR0Xcl
	 wG6p/5k77Iy9QloUFkOXlpt2y2BHehFr+R4vxiirZ9Kp+ZnJYcMmldcmMaIfSAT7Zg
	 +M1jK95HC5eM6jJ4gTsLhuFOfkrV1jgDO6t/HlTgVXQcgBx31QLFK505r5Y2QY1Zh+
	 /q5b2OruvNBrqwF0b7fu1PyS9BahDcJlkeI/zovZfIRYIvjKuVb+bxui06cRdLzK0J
	 XKMS8VOTt/GjjXSmOEbpYZ0/RIk3QHxawdEpkqJbtXmmB/oymBuQYlDQ0DXi0hQS2y
	 SuL0xnmgH9NDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD474CDB47C
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229925370.5674.11233473113328416179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94ba8005fa167507ae862977dfe48da8cce81e559f55e3e990ac18867e6a018
Date: Wed, 24 Jun 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782299253
