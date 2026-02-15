Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D3E306480
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771188894; cv=none; b=A/SOpah8oHAq1yYV0+OpevypLvWt0+GiVrJZ0saMROYJcTIHl4TM96GIWeucAhpF5zxa2Sxo9pf3LDdd0gMEnUEb3oXyVYUQ38J6E+MsjBi9iyOLbK1DPE6xekHe3rtqgfX7E0GIw3n2Q0KZyiLdf/N3AeCmAPnIsI743JuSPmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771188894; c=relaxed/simple;
	bh=xF/Docm8DLfo79g1Qz2dGTOEEAm5sFgsOUcOlTm3bX8=;
	h=To:Subject:From:Message-Id:Date; b=LlJKfmyrUvFvJnyB+uBOhdSIV2gqpMeeBRy6dgLm/hFv/HO98WKslIC+bTlK9m4t8xCr5uSNx7B9zWSoHG3zEeNqk+Q3EQqPj9oq8QrEjkCqOjhGRoTev9ZbmgWgyKizviOxm0BtACQWGVcTrwSZJlIm+TYkfdTKwENx4yL+fGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncj2JpVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncj2JpVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771188893;
	bh=xF/Docm8DLfo79g1Qz2dGTOEEAm5sFgsOUcOlTm3bX8=;
	h=To:Subject:From:Date:From;
	b=ncj2JpVYFK4ljz+8AIeWH16cWuqP7RnI8uQiELGLM/Wfso9k3/+9a4Zn581iQbjEW
	 tjKY13LGiYrX0HmyGlS6vHkXnwZDYY0eP3Xn/n9CxxfG/8csQW12LMYzr2GPaFA70k
	 SlBesTmxFpmbqQAABxzEyjg0o0cKaUXkiJ5wv3Bfc5FsEfmUaQ1DGxnc8g72LUUVJ8
	 zD1ImBRBg0M1FtDrTS+MpykxqXFWb3n17R+yKlEF0HqdyYMGE2rcgyjYU2bGztb4NF
	 e7nNQboQzqYXy33L0BzgNylonGpaNtb++X6f9dBrU0INANdFlToPt9UZOiMGSoZMlP
	 DmtT9MefT1Krw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEDDE63F14
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118889361.10893.3380218077511318069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115fec55b03a41924e758ab12bdd0b42878eaf248c70e075809c52c8f729358c
Date: Sun, 15 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771188893
