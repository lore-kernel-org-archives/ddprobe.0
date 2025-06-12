Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDE8221577
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749721793; cv=none; b=qairTsRrzjV5AiodcwZzh33yFHhIFgPTC+4JBN6C1xQfQiZBCSgZQqrTiXqRRn97vYcqcs96/9/8hU8kMKkpQAtrWnExn8IrSHJVJZO9E0nXj5r96klI1j5XzjMSP5MHn2z4h0FLnseycm2Fw0YCjDKrJqf8pd2VfUScwdiS02A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749721793; c=relaxed/simple;
	bh=Gw/LotB7OHexIWKTK+ca2UXqdAQWs6GcFf9lEJRcSl0=;
	h=To:Subject:From:Message-Id:Date; b=rIwJnAYzwexaJ+66vhYO/cRNgetV9uq6naLAHYeWuymEio8ssiKCBViK+2+/u7B7R9H+U9mvn27GJLSlk3UrDFR2x2FPc2dahEhWyWj/eWvS64SOQbKncf/UJnsxw6U/5YreEFdW+LsI7gKif5dz6I5IEBFEBYP3VR1KEpta960=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIbcLONi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIbcLONi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5FC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749721793;
	bh=Gw/LotB7OHexIWKTK+ca2UXqdAQWs6GcFf9lEJRcSl0=;
	h=To:Subject:From:Date:From;
	b=nIbcLONiYtQ6VhaTFfHvrJpluMJMWAqbiLSQAjyApU1dvbrtqbMV8YmH4Y8HMCyXS
	 EirWMEjyXt0jHVcPl0u2sIkg+no8IiGqbKkwuz1PwBRcsvCgH5NWHxXIznGV5l8rX/
	 wuzT0llxqvZQQSur7bbsnHZ2iMAbUy2xJCbNzX/1ak75ENRQwe1hcspOz6uVMCxBfk
	 cRrH5weVKNcXcn18HB1FpwmxAXO4x+N3Kd691cmwaWpqBFvsc/Eq3Envktjucx57F4
	 XZTjG8UX4q8TBevhFy7fg3thign0Zs+YZuQvO4UUJ9ahIALJulEYYrHkqwEL3AE7ZM
	 rtEw6+63wxk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BAFC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972179358.20949.2008218935448950696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373979224752e609a2ee73958b1d8fbd9dc617caebe40e1ce06a965b7cbf185e
Date: Thu, 12 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749721793
