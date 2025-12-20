Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E023EA99
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766271234; cv=none; b=E+fUnfIxuujpKDnJE26kU+S/3FWyyXfzZVC85fxRo1h557MWmjQOB7wDmXDNPbv3XOXX/a1iw4WOBRuPN2LOcyfEBmjs1UVbJFCqyvb6pkdPdIwYPeSTXPYKN0mhrzqoEG06evr4rmHpFEvru6JYZ1Lv8xKxTIE46oAuJj0q0SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766271234; c=relaxed/simple;
	bh=A/KDdl5/Av0bNiU6NwVgB09Hbejagvq/k+vkRCC2dBE=;
	h=To:Subject:From:Message-Id:Date; b=C1OZMGQc2/KkdCKI4JHGNd4ZYjtWZ67WywRCLwidDSBeYHCCssWAbLBsswS0T3c6b4jqKnlv6Pvkfjk6tl5DbC3eENbXFoZvSBGTkP+mGX1+TW5eWCp3Yn7dTogOmbFH1VJP5aZ9Mro4cjVmXkGF/9K1PHqw2c0heWi3kvNYCx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUTEODPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUTEODPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E6FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766271233;
	bh=A/KDdl5/Av0bNiU6NwVgB09Hbejagvq/k+vkRCC2dBE=;
	h=To:Subject:From:Date:From;
	b=XUTEODPosfQRazAS9K50uM0GEapeqngoiR9qSAcMFFp5UlIuDsuHCUrL7r7OBo1tm
	 xUzwgsmLeEj0hv8Pxbx5YR6E2+lnFiS/j5BrVCtJOH8x8H5akmMMKmLN0HTPGZPd/3
	 IL7/2nES56rSM34dzW0dwhfnDFdyq5z+DSUaTvwvAe5PpCWwKyDr+FMYf24OFhoJhx
	 4VRO5SKrYdmYey5+G9DozRgJjtVL0o2Kenq/63jhJXZIM3pejrf9i7slDYfdeONbVf
	 Y8flONTn+obl+YEq7sDhTiVWpA9l53afOPr5o0S7794U3Eo2dvi0NfUDwd4Pprj68M
	 VGeVVXjii64UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC4E6748A
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627123358.27811.3048179990716919368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebb03b030e352e1ed5b0025f35ffec613a019969042b3e5aba9fea0a4e555dd
Date: Sat, 20 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766271233
