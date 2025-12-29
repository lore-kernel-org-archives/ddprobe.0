Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1AD205E26
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766970834; cv=none; b=LY4tlh9R4+VHzG+w7G0u1wZqQX8ufgUdVfDC7BmarCCmTRGkaXO3wREQPQ0k20iLfd04T9bIIUXRrp6zo1tVBLRrlC91KS5WCmrpxl+MXoT9X/pPBKV+eVcHGsREKcEfLGeR0IkeZiP53bvKkugEyyjcNAnxpOuNRcPSoJ3upuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766970834; c=relaxed/simple;
	bh=jevPenzG6jFJKJoG72WGEYEe4oM4pwXNWD40FP4LdKA=;
	h=To:Subject:From:Message-Id:Date; b=D8NXhYXAtfWrbN/b7v5xymM6qQZwflkeHWI30Vtlso5SHhBd+llvlQVdOttELOS1j2nMcPpI88/U3Rjj/R99l3QGhH5EAj4/nZzQc52+1ql8wwDsNdSyzWEC7KvvJd5BFp4udWDN2BoLFfGZUQQgRm/L8iO1EGKb5S5qFqXGsnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQh0g0GI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQh0g0GI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BCBC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766970833;
	bh=jevPenzG6jFJKJoG72WGEYEe4oM4pwXNWD40FP4LdKA=;
	h=To:Subject:From:Date:From;
	b=AQh0g0GIWIdVMADs5Sp5cqVYO2O+Rvp8WYYbFQaSdlBwrcOEjlSUGnO9XLxa2QlAF
	 3RBfyhVn8AWmkdhprWrphULWRpPkZGkRpf+ehDFA1doC4gwc1XCzLbsq3nc4VNBCxF
	 7a2+248pgtEz4vJVGx+91RYtZwIU19WrPZrQ8v+HGGcK0yT6mj4Qx9JbCQPhqstVRe
	 QfXO6NVt9MaqOOIEjQj1xriGiukWMUPWPdIYxiE1pziSbsc/F1Gnpyg4r/PoxPPdTc
	 +R4r6Dtk1VuLR7C0v1EktZAEU/CMOwQbK4iBsHkaKk5V7CPTNZp4cKgNb+CBfAktK4
	 O9JMAUcJ3SQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130BE784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697083358.8804.4524197265771019844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ef59bd530505547d7cdf8808805026f54228144d40158d0c8d50e72fc99263
Date: Mon, 29 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766970833
