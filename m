Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B16A16EBE7
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716976464; cv=none; b=XgO5lYpahBCGRfgODgR4zCyd9g6ZmESlZtNDy0UyzBNeWE3krvkUS2/Y3T5QsuMnSHgGFWE64nKSx3Seuy1yJPnzhQpEjCVS0FVLzHnutqJi9NV5FZ2xsz9y6gwAhGWS2Nq5+lINpDbc8tDsXZBO5UyHopmCmXnqJWHutkYuvI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716976464; c=relaxed/simple;
	bh=JCDu+6resWAzYCkhPJ/WEWqtO/uRx78N6hgEU2u6oQ0=;
	h=To:Subject:From:Message-Id:Date; b=NxRyK+R5d6PGCi0H/fhgtuh0BXJkLQq0WPcMbte9Ca0TEBnEfmlQvLD2+Y+AfjxGGwgl+VgSZ5+CXk4Nlj0OKhn5BbAGM6kb3xEzzfyHoC8nL7+HaCiP889pGl8UkP1It5foFR7O8Jf1HR2jjOlU2cSkEsV3IQdi1XbztAA/MJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zy09/04g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zy09/04g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF608C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716976464;
	bh=JCDu+6resWAzYCkhPJ/WEWqtO/uRx78N6hgEU2u6oQ0=;
	h=To:Subject:From:Date:From;
	b=Zy09/04gnpS/5q+rmAU3y2xWVT2ygzn5yEUPEBoC4f+Te3rwz/VYcW7KBEc+74vkn
	 Vr5WlgpjZK36ZRw+GLif9F2w/yZqhL/5jpBJbz5guMIYgf3V3DenqyQqknVFqEAfR+
	 JTaN+u/jkG0LSRYcNwF186YR4diEFmbx5/nT0HldyL58t7EvK0i9e2Xr1z95W2Cy3f
	 eZNW647PazCSOQhLo7pFI5+xGZqkeB/ho8SIO82YxwEFsmkCt4/+nOsdhNp283YMeV
	 VxUk58zF9CsH5Euj5I9LeqcTl+92qsQ1N1Gh3PiHUTLwErwD2Syk/wZgzBu6sOGyA4
	 dWswzOHWNiytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBF5C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697646280.22212.2894862014646528829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd261bea476b1646ba6610ba61d0fd21d51c842110e5bfe9a7f956e9fe442048
Date: Wed, 29 May 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716976462
