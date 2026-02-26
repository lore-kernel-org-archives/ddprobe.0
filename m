Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA673D413F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772122494; cv=none; b=nRaakc0hqYd4PAKca5TMhugswvTTrPstjsFUX0FKcT0lIcpV1wwEgU2jNkchJlE5ZSUQujwW4xh32pIa85PHPU/pgXyQAB7gtY+5j3Eydqhxg6pZ/O4uIi9j8RCRDp6mfeJaHzv+w8NXfsCwqi5elHPqOk7Wco4HdQw/QgHy228=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772122494; c=relaxed/simple;
	bh=/z862Z38V42emJkzIx3z2l4M8SVbZPsvXwkOr7XtYRs=;
	h=To:Subject:From:Message-Id:Date; b=ASDJ0wmydcwcY+NQ6om3mvzPcsO1tIQhK97l7X9+OJzawn2FgEPKTJT8kWcTeNrKHRqys6uFBq6pELOH3W9xsd2XTWBviZolpTH6ZdyIyKs9PGYE7z3DoTxFHrPleEqCIfKo1LGRQRbmGRuIvfEvmhKjeb+uq4V1vh7tPRhqBbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlI0fqY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlI0fqY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE1BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772122493;
	bh=/z862Z38V42emJkzIx3z2l4M8SVbZPsvXwkOr7XtYRs=;
	h=To:Subject:From:Date:From;
	b=hlI0fqY43b/XOy63s3cKPFAy5lMTSmjHV7xbOFR0kHQDFx4ANEnYumFHiwHC/+8Vc
	 oRi1LRVrqmXBZWXT5SzWk5aLUR8lU6AZwNTOK/JDH89FYnPc3RsIzknLGkxxHAeqi2
	 MI886Ec2jDxve9pnDVWgG/qE4xJSIUddCAjvMX6f28Vv4zs/GslfoPNxBcrKFRzpvn
	 WNGUATjcgDvXNi/SbVvsOQKVW//Rr8MBvEMaClG8XO1l8qT1RH2HUU3oxedlKBOp2V
	 dtnH1euXOtWGQobUAxHnt50ZzTZpP0bXbcKBF75S2Fn3pNzge0PakE+TBmyN6s8h52
	 Mi+dxiJmDEc2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95417FD8FD3
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212249360.15379.2053424213065497387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91ea531fee9525bd15d4842dba36f452d53b713b770c4e10ab8adf6baa0bbe4
Date: Thu, 26 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772122493
