Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E67FF9C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752540594; cv=none; b=O0ei31o3QqBbglbhg9qg6cgJiaynrcuFWZrbL+LU0wYoPLHYeep9muqgZJDL0eYwKT6yTXrpuHxwDmGNBYI9IssECBDw2+Sfw1FJWNa79Cr/O4rTKQUruUDq0JZLfcVnYWTrm4tHOp35JXXx3Fc9BUYa0U/jpJZ3NTybtpZpp0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752540594; c=relaxed/simple;
	bh=hUf5queu9TnrArI9hBRybwoALqWksnyoj2cz8H3iwG8=;
	h=To:Subject:From:Message-Id:Date; b=u6YjLoMIxw8ibro3+DYar4HcJ2N5eyMfhlSkaavhoNeOWs7/zWUkPa4yOXYM26e5Pg+8nEPi5JHZhjz9e48zOuNQvEu+tCGWEu7cMTDhnME4kavaxRFycJt0qaGQ+Hk5cZP0IRy13fCzreKTKsKDyCEqD59j493g7hl+jJDfUhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ5aogUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ5aogUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5688C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752540593;
	bh=hUf5queu9TnrArI9hBRybwoALqWksnyoj2cz8H3iwG8=;
	h=To:Subject:From:Date:From;
	b=kJ5aogUbP8goSJiqDlf2l8vxXSunDZhOa04B7TjAVRToaxssSaqF1ND0CO5GZDaNA
	 lCi+SulBdcPmKud4GF8iO7tAfpLGg1VkXbWvfrjaiqN8w2jxH64xKWa+9R8A2whfcw
	 lG7uphvT6QXNmcNzMWTfB6X0UW6FeqrIRgYgaIJjbVhR4xpgchdhWgr6jR0u2xMOi1
	 /ux9fTa7lPaLYbSMLPsAu/ceYyjuxmuFPCT+Pz2kBoVB+4A5YF4lIhHiCqdigXhvgF
	 d7WKi86w0D2NDy/bZerr7fLNYriWQJWLt41S1GwEivdP1BhW888L/oqFxmDwQpxfz2
	 X3tW4bmlDoLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EAC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254059358.13604.155564904559507617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440f85105fdc6982871ab040d6f17d35ef421836febc8a5450c6b49ef601e567
Date: Tue, 15 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752540593
