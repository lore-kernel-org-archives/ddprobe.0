Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E6025D1EF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747728593; cv=none; b=lfLjmOApLZxi1pKrWMopwJa1vx6oBFp0FUW1ou/An74MJUqtmCmRyPRcldQeXodLr8WFdSCZsnWy92sDvOJv/1IVX5TerUVtlDJQfHYWCvxu7/VcWjmkBCDyfG7A+O2XjnJ5h2kWpvV8brNBGhnqKJuek3h0+tBA2spHa0z9+Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747728593; c=relaxed/simple;
	bh=xFZsjUJq3NzdRRPHY/1F9EcAUOCCS/Nt9x9ChZLzg+4=;
	h=To:Subject:From:Message-Id:Date; b=Z6VXyz3oOA2WdSyEvgffxeATCdijtGSX0AKAGf2mzA6uLEpCtx6IdQ4BGhP7ZwOL4LeBcNIdjKJ38l44mEBP8/yboHD+vgbK6oOl1rwktSi72aOok3DL/1aQLxsVbgVlcApikjGBXhnV3aZjS9V12icEwVwqnqgrairIiUWAi9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT9tEjhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT9tEjhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747728593;
	bh=xFZsjUJq3NzdRRPHY/1F9EcAUOCCS/Nt9x9ChZLzg+4=;
	h=To:Subject:From:Date:From;
	b=sT9tEjhVroKNaAoIoTlxIv8VOvq6cGYjqW6SU0cRYPtQ6/PMeH0LzUyN3TiKv77eL
	 RYNP+GjQ2I2jCXIFOPOGAwOUYZss3NiR1Gap2xE02WsKzrZpDaDe6ZYL1O4kn99bip
	 p5u+oZQQBNm/7x+jZSrqMU4EcFt5N+QmH/FM969ZvEM3KK/OPA21Zb9OW8DXse3L2u
	 xOzQXYstqdR2KvL5JkY3hAa28ZFm32fAqaeZca+fZvw95C4B9VJm7pT5O0znFp28CM
	 /FNlIAmdXfxGiKgsJzD/ootFHIyt1yerAinjNNbywRn8WJvbiXbT0HWcNgx9Z/SlRe
	 cLEvGJ+eVW9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018EC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772859358.23117.1239049397307037593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf75d8555548db22d964d03d8ca5fa1575dd735b138c4d170938efc0ffe00888
Date: Tue, 20 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747728593
