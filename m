Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68714AD20
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758412794; cv=none; b=Tq3gH4uyKZD81r+NvjhgGSVQX0TDz6uHf1nCIdIRQMMdPpdVAuCzCIFXxKm3JRVHpYfrhJRTK9VX2qB6qaHx17WcDn/UTle25lzFQqMRLgWOXzJ7Tp0DynkHBz+hxanvktdvUY3VmqtZbTjLN+y3qj8J0eOSqN2p9rs6aCQJ8Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758412794; c=relaxed/simple;
	bh=XJfrkc69jsdrBply9xiKEZiN9XPd3U+AZ2kQxVxzfgc=;
	h=To:Subject:From:Message-Id:Date; b=GqJHgscisDEWJoJp8H2zSaBbs8xbgCeiHpQHmezvp0gDueM/KM2pDVh/BQ0bHJ8bTWYpr7WPmYnMMRsRWSt4tN2KTHVeRy6bXgFt8ovvnOkfi7pyjjzOgGtztBuguRUayrkMEzmDRGRLzcPDl7ZgdrPWDrULHmKXZhgQjZcIO/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMSzGtYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMSzGtYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758412793;
	bh=XJfrkc69jsdrBply9xiKEZiN9XPd3U+AZ2kQxVxzfgc=;
	h=To:Subject:From:Date:From;
	b=YMSzGtYYmJedO1rDZoHLQjO5I7HExfdQavg0MVvaPjNHcoSubRAV8vjPFkkgltCTm
	 Gw+xCv7pnE7xbBlKT/99kmW4ROBQiOKpVIiZnrr5alRNvP+qEG2IUoBWMwMuX3kUiQ
	 hv2/LmRVp6bDzsY3tlD2MJpWWicUbQ9fRN+cBOH7LNqqBPKxwyotpXgtkW8hRZuy2Z
	 JQzQ8/st/ZEENQwV9W45lJGNlqrJSe8SLsozCcy/OEC17zuyv/jdxyCsbtrDH0u0V2
	 GR7yaROh4myOUk2D9YyCPrds0E+tuxi535X9+aEamH/DnGE8quB+7RaMxC/vwF2boR
	 ARfxUYxfn3epg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BACAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841279357.6362.11603725686612631316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79045749fdc3ce628a62de88213c6750fc2ddc64959a0137f49931aff2644275
Date: Sat, 20 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758412793
