Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD14A95E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743742794; cv=none; b=FoSngSol5GwtnSqjSvHxtIK1KBcoQyjxl/R0etms7GPEjCXZwAlFAjObUO6j154B6PccKsMWnDFt1l0UEXwGMoIMSiX0v+XMGLi0DIBu9lbBmPxx9ishuZ0YXu29QDWwh/PDfVTPPiE4K+BTlGx5rUY1spBhtvCJAmG/fg21oGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743742794; c=relaxed/simple;
	bh=lRl9LX5ACzl0zNYAlE4lEAt8QAdclDKPv5c28BiFZF8=;
	h=To:Subject:From:Message-Id:Date; b=C0Ty8SkR/ylztE8vy0B6kPDQkTFJoCpgrmFsLNThpvNqzXoSxC9oBsB5Ex7BckUDVFCQYYTpk6dhm/b8OJhomM0goqewAh6GVXYb7OPsGjXkYT4aL8jNHPYYs4aJ0IuiDvRdcjGhawiJKedYvbOcj1VolJ2iDNpgHXCc2XUMNgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oawBfyaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oawBfyaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C1CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743742793;
	bh=lRl9LX5ACzl0zNYAlE4lEAt8QAdclDKPv5c28BiFZF8=;
	h=To:Subject:From:Date:From;
	b=oawBfyaM0fJWpmt7t/fTFHq6r2g2dsseHfD9+WP5HroqlTUCVRznUwrHVioWyjX9r
	 iq55FcmLdIVXOJp7tn2Rl9jE/7ivHl9ubQETZCh6Hsb3LOKd4raWo0dv1qGXEpMLFV
	 YKuTGrY2PXX7QIPhSrGXEM/9PWF6UCN7IkyoZh82v5377Eg2A0hhDRaCnXnznuHVtj
	 A4LO9tM7oDvmgaZtI55ywSpSNQvDZyeY97rOKNe9VjkweofnwUl2rmCeCLsagyoBAH
	 NuyjhEb33QVzbVzbh7ERazc21aXvDEPW0X7HKGFzz+J3FFrxW8rj4pJ2fs06Jyd99u
	 a0wr0EyQoQplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F2C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374279358.9172.6187868665371516051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf26764334a2db73923b744e5aa5ec91e4ed3b7bd87ac070c1e6aaa970fe74e
Date: Fri, 04 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743742793
