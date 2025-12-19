Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6AD1DB375
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766111634; cv=none; b=pdJzx9uag7QWI5drnnStBq4R6MFhpoRCf+J+DxZLm+gq/n2nt9/G7IDIviPZXp5XO1E7ucPKjLS5x3b6oL+TtUk4YuJtmDnjeX0H1qYpve3FmSlExp07kXoagj7SiPC92dexoUf9ykhIxPGyywutThtX04o/YBP4rRMuz+E+NAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766111634; c=relaxed/simple;
	bh=TZUTWg5VvjlCRTBz6yKOdPVL5Z9SFXGvpAnjWxvTv/c=;
	h=To:Subject:From:Message-Id:Date; b=F695aWfedv+5cf8XIAc/LOtkM/qN8rRkzAsH5DRF3/DBgz0wihH/jRCCIq61kLYG1t8CMDrScVfPFvErWNAW3Y4KhMiJOW4fWNrIihxaiai2rfnfMy0DzBXoFfIkPXEcF/AuxtbTk9QkhzgizY8JhjhUPKXbG0iS6DlleJtZISk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYjy7yd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYjy7yd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470EC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766111633;
	bh=TZUTWg5VvjlCRTBz6yKOdPVL5Z9SFXGvpAnjWxvTv/c=;
	h=To:Subject:From:Date:From;
	b=aYjy7yd8LwxHXjNJ9QWmJGjO83je0ksYQdYaPAwMykbTDY61kBSzCgRjXXin8Trmh
	 xviuS5fvMKxkbYPn9AyP7amz8A4dQGci3D4aHF7RhzJjq9PFyNJsLVbHvMW6JqLIvi
	 j9K7yYI2MZhonbMlUyg7wbQVT9hgpd8a2n7TZ8/NmgZCsug4OAWlPREiIrdDbeBzLJ
	 ORmukth1LtFzGSrugvj2o31cBDtP2x5kaGAvd/E3b0Vj+Zpf/p+4jTbPSNWJThOimG
	 q8NW2dq8qVBtWavQ8rcoCeQ8gp7x7a2N0v6oJNblsTYARZpttTTtCQg2tUCS+EJF5S
	 4Chpz98cqUT2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3BD711D3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611163359.25702.14577665990925893990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6749ee94e76dd6d24ff09e9cbccebced097b896ee9bf58d0867875f885d59093
Date: Fri, 19 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766111633
