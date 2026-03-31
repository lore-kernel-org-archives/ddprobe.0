Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13522E401
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774955694; cv=none; b=C2z3TytwffO5HJ2QFX5VzXnQr267YtupnGsUJ2PYXcv0GJ+F8WFSG1Er1mHO5xJ6Ml/WfpOKliYASHoZTF8r1mSHNYHzrBbercV3+VEXl7tXsxL6DIbqK9YvSNqdkMThysWaleoyt5qqYp3VRflJepnfnGmUd4n2+F1HzDPqce4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774955694; c=relaxed/simple;
	bh=UswdAKciycHoTfDy2Ew1XG4msc+oPfdPB2uI8yeX4cQ=;
	h=To:Subject:From:Message-Id:Date; b=ltaDzVgCMsr4Y+FHUZZAKcqdFXOlBNbtPt4Ybbshv2tgDTT3a3xCNR3/EvWbItacy9+DFN/lq4bBUqE0BujeAE60032RB00hmlKFRuKD78OEc16BXbcXwQclq7lRskkKTYyOl9e8aTOS3wiMrOXFa7905UWYRIyFdM4xbM4Ps+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS8I55my; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS8I55my"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB18DC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774955693;
	bh=UswdAKciycHoTfDy2Ew1XG4msc+oPfdPB2uI8yeX4cQ=;
	h=To:Subject:From:Date:From;
	b=SS8I55mywsRME3X2zpxD8P/Ggy1Gh53tCbuNYPliQDvlMjdNzfKKUbawMNKKZu6U/
	 97f6Jwdt0ckclUOJv7L2CBT88DxHw5jBWEOPJQKnkT2SAbthegSBBeBaM7lFC3IVdh
	 ixcQ82sjDn1/Hy2jHhIbA5WbJFL7TbppEteJyOvQ7x0GELPAYPrJG/tEgGzy3YCjyL
	 GEOvmiRELpKJI7ZbW9TJRWlXB0gWDrxyojqoIUl2l6h04e53ip3DqAbq6Y6nK4RAdP
	 RrwSNnT5P0OeR4AlzH2qfjwEDOZbXTfQDarzdfgNoHfyirwaLn/gKVMofbE0iZZQpZ
	 yDb5dJtl6yKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE01061B2E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495569360.26870.4702865869969532867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943c27c9390f8f8f29dd160719c9168d6eebe9cf397eaa835db9c213e8d6f535
Date: Tue, 31 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774955693
