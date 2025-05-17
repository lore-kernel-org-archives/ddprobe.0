Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B71DE89B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747525794; cv=none; b=F8BSEPHLl+y1O7uUKXyPfarMeZvUOP+n+fXLtFBGoocRVTk5zWzaJgM6KQJSOgDlSbRSpnL2unFyDxi9hSRUf9QKNeDVhYsGfmB9l//3qMycrq2+mMUIiOfbSPMKIGLMII7aU5bv4GNq7/3z1LJ/qL4zm+DrHEcH9GEqhk9wB5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747525794; c=relaxed/simple;
	bh=arBHYyyZCOKFu9y0R8D4CzusIAp9XPOiq0H+5YEzzXw=;
	h=To:Subject:From:Message-Id:Date; b=fSnnd4u+AT8DMYsYES4g55DYJxGN8U+pLjk2DnO457f1DB5+XfODWONfjUdiUaZit3FmxhgMtNBcUbRCXLafMfc62fTle1OSXs1SiNRF1TLZP9VaC48KG+KuSpemjUYJKk2/Rcii4Ys0p1xuVJg4XJh78w9cJ9rM2NDbsKlVEOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfGcmht8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfGcmht8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F3C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747525793;
	bh=arBHYyyZCOKFu9y0R8D4CzusIAp9XPOiq0H+5YEzzXw=;
	h=To:Subject:From:Date:From;
	b=NfGcmht8haNW0OcrKeuH4MFNFqIXv0HzvtwuG51/4ZKohnKMVhlmHUU5Qz7dgKpb3
	 cCvGO9cttnjGFok0sIgUrdv2hAyuRq1K9WlnMHQqsRCMSTQSf25jaffc6pA5329LUx
	 q5O2Q1MTtlz5RkTAsAuKbzlzMAl7dR5LT8Kyqp3gNTcRF9vEJfJeiLYjH0+ulQ2gxC
	 PAgX7hjXFwZx4mx8xHMOz9tWAHu30iLJ/Pv2ij2ASY/+cNshFh535E82oqEE5DDkJd
	 42TfAArW6j3BIAzlJO4ijqBY+Przkr3AZc0fZkuo3J3Mv7DQ/OW1OhDoZNYHT06YxI
	 2LWiuhKpy2B/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E0C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752579358.27412.10523606292371790014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1e56247970067377354ff80e5a82ff43b433f8ffe99b884cb808c9861ccf1e
Date: Sat, 17 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747525793
