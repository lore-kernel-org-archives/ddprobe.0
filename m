Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D772E11A6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772962494; cv=none; b=JaQgC+toti/3+6I5yQPXe+K0d0etormz66ZGadOxquJWfwpVBv2fBNiFJ28AKFSjdUyOSQMxY/0UcDa6GnoBkd4015aQQ0gC4tEgrjJQJSPudXGsdtwoUZCLtsVH5G0P+M0ERaVMd9yMaxMXSKmeIbKSSwKT6KItkxdcjYA9AlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772962494; c=relaxed/simple;
	bh=iJ1cs/f06N7vRm/v4uUz3ROOE6HI216nL6JDPJ5KBM8=;
	h=To:Subject:From:Message-Id:Date; b=AEVRfB6Q44Yk6efre5NPmVjOFD+2UhluojDR/BIyv54nLIg2GlS7QFfQmed40JZ57Jn5Ogj33Kle9uDLO25OsWnDA9A4nRHBs0vhhd3j/A52jVCdiVVMMOTaYXqyS6HTMfd5XPpsYHexQtpAD+nHxmSZBvpP6tXATtHLgFjD3Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNPEgma8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNPEgma8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6712C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772962493;
	bh=iJ1cs/f06N7vRm/v4uUz3ROOE6HI216nL6JDPJ5KBM8=;
	h=To:Subject:From:Date:From;
	b=nNPEgma8vCPG6vIdoWdK903y61fZ+SvnJEyYCECpOQOaLh9MPdTV8yJcBssDvzp/B
	 FAsv5e5UZKegqQvWA2gha1BIG5JkAPf5swbqKrJUOTYCGy0u/mmDyAjg1oPNWabrYy
	 nRcZ0WBkM6qrQ/qZlj5F+eJ0iQtE/LxPwSZygNVc8LOsZ47pzzgAT0sBmanX6oGfh1
	 mbAmCmSGAz2bM13tNEej5vQIL3iijToj8da+UPMTQ3+eL9HqR+lnD4vLlUD7PjnQFq
	 jbucHQvP5QWUD9jHBSC/6CVywjIZrWU1ljo/bNO5OXRejuC6DB4yL6t5abuMeJaCex
	 onoRKoPS9dCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C90F55132
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296249357.15519.245629335024823168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83829b4193bf9ee3b0a19f42955982ccd1644df4e08ca237d88d71c6cbc10368
Date: Sun, 08 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772962493
