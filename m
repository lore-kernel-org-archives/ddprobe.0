Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E80C8C0B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756441794; cv=none; b=dMdYfdXwxo61bsaHPnOJyoLlfcyrQGsph+PZTvpcrt29gJoy4tVIrGQ1PoQTYRgNJQRGZzopGGDxr26OHhbZXo5MxyA/sQXrv7kzrUX0XeifN6b2ax+RJyuV9LAsmK58jnCKX9RkPidzY+LOlU4jL6324Ui1376XqYrCC3KLFPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756441794; c=relaxed/simple;
	bh=XTlQ6xKRYj5dzpW0baSMjXF+dZBy3n+EWBXcEvqUQbk=;
	h=To:Subject:From:Message-Id:Date; b=N6R2XKCLrxfv2LPb2CfowAarGd7XMjKzcSiZitm6xS8+cyGYsbArXOYpQa70GWNDHqHQWO2inJq7bEkadao6qtKnGhbsgw4mwrW5ZFw2/rTsbBw0kpytcbDXtcMoOOVOaI/AVdeMVGTYWQxYfroct4zUK3KeiQWimoTnK9H3JPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFRm7kq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFRm7kq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756441793;
	bh=XTlQ6xKRYj5dzpW0baSMjXF+dZBy3n+EWBXcEvqUQbk=;
	h=To:Subject:From:Date:From;
	b=OFRm7kq2AwEOFPyZgZzblgOi2+4G7WI2TiTFCSNLoTDp0XySt4KgOXTLwxXQwyw15
	 uJXSA/R41+dMdpZYGS59KTtGFm1HwCqfE4+h5MEVg61jQNnp3qFIbv+ntQV1PYP6Ez
	 9hrP63etbAVbdYEQbeMiQpy9YIRtUDtsY1+fc/eIoNdWzqCWR6RWH3qNaKP75XqbmF
	 BFtqSNnmzrNfndIrVd1jd1kzyUvobJdzNvWpecE6jjWJUhtq09+Zx808w5FWAsVjPZ
	 5I9Fvv0jxjw2HSClXfKpqtKF5UOBl12GNwVQS6t8ZfgwhItPvrUZz2Tb0cbfUBeU/6
	 54slK7S2FiBWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242DCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644179357.929.18386470822714813408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a943d90726c588e62559bf3c6bc8268b6efae476612bc526ff1243051ef42813
Date: Fri, 29 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756441793
