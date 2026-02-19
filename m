Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BA53EBF28
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771467894; cv=none; b=SsIbME3zcFQ277eJC5aaYgK6Jm8I27oWs0sMJxwv8ZmHdADkLnXEl6sbo/bCXft4you76Xcwh48EoryZ8H+ig5E04ZjHiHM5+N2ibsAz/Ccwxho88CHU3M1TYSoO/EYuwD9aKUrS24fhRarDD4IMWJq3/3fBl0VrrMt/8vmPr9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771467894; c=relaxed/simple;
	bh=+GvyDNdU9Ct0vXHGehmgp915jtpirpH8gSexDGJwE6A=;
	h=To:Subject:From:Message-Id:Date; b=XcLOgzFcV1zUEqw1WJAV5aQyToeGfmTamzKQSUPEPGlXp81eks9yKQ2jSiPc/7ZtWgVh6bk9L2Fe+uhR0K9jJTGbh/m4uFhACj85N8vRmXxrDIWk3G1E6YTHxCKKNSvjU+5qz/ySsjO4U21gcZJ5MOCtz0Ou7zm7Iiq1d9yGltI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkHWk4Uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkHWk4Uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF48C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771467893;
	bh=+GvyDNdU9Ct0vXHGehmgp915jtpirpH8gSexDGJwE6A=;
	h=To:Subject:From:Date:From;
	b=hkHWk4UcmiZaEpSXvYkVwtLv2Ac4MwXz7I6RJJxu4wHZpHq8E3aGUlzJvv6PeJIcr
	 Mko4W9Vg+zulS+D69bEjdmNupe4Q5uYk5/aLEhh6fVEh5Dzit1ZjK+Hnf7Jl4IKOMV
	 PVKGHYi6949zCP7k+XGJK8eRM4REiTVI2ngOmgVHgj733QF7pyeSyvTPERTNwobt9m
	 M1wkI92AlqFE3tKZO9KgngG4EQydXvOtGJT33VDKAHPeRq+8uoGDNwk+n3gETkkhIj
	 ZCLz69pHvmq5uJWtZLc+ZEbPqIZyekPFl/DPcqvIJu/yc2XSPmWDWFOQR+OFeHZaXy
	 Fwvr2FSCWf4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FAE9A02C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146789360.8673.17148050476457051660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29af50311f6d81c7f491872235993f5fc984fc9e4ec008016c585223af5fc666
Date: Thu, 19 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771467893
