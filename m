Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351FC1E4929
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745794795; cv=none; b=b/7OI8a3RgZdzp9z9JexKCl9mZOrOBrAXFWYv/lX/HnUDgtROqMykq5hK/+aBYekFyFRkpkwCwkIxXQrX9mLTXdBFA9RZAU0uqRq0D5gf0KS9uVlqbnYtADBoQfWGBNbXYrArjw1FhYYqUHNQ/0tnzb/UMJdd9Uk+PY+OhmQv7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745794795; c=relaxed/simple;
	bh=CbBNHW7mo8l6/8TJE8Q7pExmwQRdcAVdk1d+cnEUuTs=;
	h=To:Subject:From:Message-Id:Date; b=bcPPit72riMyJECJnpAhFypcCmFbL0+T4NBbHeXT+gNgYIX0q/liQ1aRTbU3CXbqOyg0/E+lvcJsN1riJIdB2+ZsiTHY+oucXqIei6irBZhg3IUafWhltuhvKe/6/jdmRBtePsGneOfEsRxbTHoGp/dPW1iPQov1UgD/AxXFZ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyXfT3+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyXfT3+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745794793;
	bh=CbBNHW7mo8l6/8TJE8Q7pExmwQRdcAVdk1d+cnEUuTs=;
	h=To:Subject:From:Date:From;
	b=AyXfT3+vdpF0P2uA6jylzRzo6+mvdMlyirvWt82xYCRL77Vg/jcZxPCFK6fIH8OEy
	 Ip87F3FfTa8gcvlX0veTrOGGrpIdXvDJ7kUDmHuN43m3zt3RguhxI0Ui0u1YOxgp+g
	 OwUMi9XELsWKAFupniedpQX8p/iEoR5IMICDJRy4aczNfyhns2dPgr26phdNu68eH0
	 XwNMgPwoSqm2hKCcDaGetWaFDrPoA8NPhI/vZ7Ib7M4fdBwe7RdVzrlxmMQNtwDqhV
	 wVqzkBRGd4lns6UNXVFiJV0Kdl2Oc6RiOpk2r27YB/A2pJLlzcT2jiMsTosGS3IjsY
	 2hwV0tUZiDWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B7C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579479357.1670.4193392797722047745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a54965a101a7bbd988f785bd9c2a0a30daf31827f32e2a620c4a3781f20f7a71
Date: Sun, 27 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745794793
