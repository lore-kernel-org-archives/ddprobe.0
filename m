Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3398C265CCE
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739539134; cv=none; b=g326Yu4B/kWClfnBDuS3CaWIi2SxXArgssnEcTmvSfO3cVidOJNIJqH5xJhSzqZi7eIDowPiMQUSV2oawuzUdnQHofeH4s5JJj/dRuz/b4jMl5PXB3IWY7Pp3J19apWrkyb4JuIKtCtLu6EwNqGScCGEXjjrsFL+XO1vPFDiOQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739539134; c=relaxed/simple;
	bh=eJIkU5zD6kO0DyUn1VT5wniKdHOySEZAEkRdVtq/U/4=;
	h=To:Subject:From:Message-Id:Date; b=V1ImA76CsK4k38/hXHV8qZlNeOolrjV7p+ZFx/HzI/rqRDupmkfjOUFhtT5YXMK1mX+ubE9iGsRypFSrX5ijUP9OHXFwP2caNX9NjW5Fm7jw/MwqubUITcKE98Euz7Hex2vwKA+HzIM2f7z37DIeDLC4MIBf5a2EhfhD95hYIG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tErhJG7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tErhJG7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5423C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739539133;
	bh=eJIkU5zD6kO0DyUn1VT5wniKdHOySEZAEkRdVtq/U/4=;
	h=To:Subject:From:Date:From;
	b=tErhJG7aRyPmDWItNHDqGntCYbOAruzYFbaju+2CqW+wwlB2sNV0B8wff3RlNuXLd
	 szd3JOVXB3ltxrBol9bqrLNEsOwbMbGEQ3cp1CTPBdx/rB8cSDzK7CjgZNJVNjUw8P
	 XNoCBPymG4/hgbbdgFZ2UF/QVs4OOLBv5dF0g6dhjkyJhjuFZOUbnN7uRhWipcZxsB
	 btM+9PqMDTVMdWzIoBQcFkQ70fb6lsaMcW8yme5REO9N5Rhp3uxywYoP7qoirbGKc6
	 P8RR/DwmP9yo1IDX9iLUY4Q82+iZnbFiise/136khhuC89QoUhc87ULb6LvN7vQGXG
	 Cwx1LCWzs1JaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92763C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953913359.26339.18150024276864149822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dd7ab64d975adbc31642fa74f21302309be0f0d06166911dd6c01ce8431169
Date: Fri, 14 Feb 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739539133
