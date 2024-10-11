Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE219922F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728664554; cv=none; b=Y2dpXBdGRhTOlZR2LT5Lg8OKszWqN4cIK65zmj8hZ+0qz8I/v+i/BD973wTr4oFeqriNLVslnt3lE4tfkgszLar0g8wOvH7u0/yFXsQk0k9a7Z7KMVTrRrYyRUjzx/8q0hBDjSZ7IpHLmA4Q5OyfSnck4BQBfnp7bmsrokFJ8+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728664554; c=relaxed/simple;
	bh=6Y9nkdYPIxqyhXBmxtfnN0LONO3ed6es5xcdM7kULTA=;
	h=To:Subject:From:Message-Id:Date; b=hexzeHeOy4c08P4JjCx/tShSLpjHB1Rro0VLQifQzDbRMX/r5I3fwciMvbnOnkcNvNnJxZAsjOu/vYd1Iv0QvfPTB0ZliMi8Y7ev9uZoRcPtCd52PKfAp/alcyYZOBN0/Fk/B7hOCsY5WbO550Y/ybZBk3ncMb7s/OIkK36FV6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpU/2+mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpU/2+mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728664553;
	bh=6Y9nkdYPIxqyhXBmxtfnN0LONO3ed6es5xcdM7kULTA=;
	h=To:Subject:From:Date:From;
	b=OpU/2+mzffK6CBOXRXnl2s+cYQC4NDzK55VaAE6e6tRJMxe0oDgSowCTmLYtFEGSi
	 +oqkBgIM+l1ZcZIhTE6CUmI8La2i4HYPK6gKZJOG6IkL6mE9YtdCDN//cMfM9Wp4Os
	 OfrZevIKglumU8Rprt85qsdf6SPZfb3MS+GjNjcLKL+L+qpqgNdDX8dyviHkOqJNOW
	 ePa5I5bJ1YqjMd7oRJFlB5h71cmQprWVboqh4hEjqIZc06jJBRK3jVL/I+dXQnFEvZ
	 Hg4E+IUUCDWk5ujNANiYnW+h2K1W2Nk9VD6k1undI53J35kWRI+Pe83UkRaNcfDeNk
	 gr1BX/njwWz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C97D0EE17
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866455360.11952.6640706801713448631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646797a2b48830dc53377c44ca5ace5ea160fdf675c120cd549a146de2ead105
Date: Fri, 11 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728664553
