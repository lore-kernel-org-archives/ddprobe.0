Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5AD1E5B9A
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790834434; cv=none; b=PjidTcOHtDI6GhzLA/Etz5Q9zMGRRiTyAoaCeCX5G6OSAk3czH1Y5t7ihC6hA0stohUfTAX5MafWY2en4FGqk4awoPwPJEQLucBja+ji3snZdhgCsloy4DVMoIPDTwbkIJzLYCWZTk/dNH1AKwcY4XNCnNEVHhZiWFu3VUxJ4rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790834434; c=relaxed/simple;
	bh=gUB8awee/gkqIb5fKor9aFmPlvUI9iCv4wMjV3pN1S4=;
	h=To:Subject:From:Message-Id:Date; b=XaYOEX9jh8IY/epqQAkoTBwXhwqnKYmobSg2XC6fs8xEbIo3G2Gq6/9MW+EDeo2N7DJlVcUdOyDRkeyqlTNibeWB2BKjyco7EVlUkItBYO0psSlxoulFRZBKD9Z+RX0tpxdAgpV1RldU8MTGHKBTt6M2tVh6iBu3WBpGxO7cWOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljrgA2K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljrgA2K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9709C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790834433;
	bh=gUB8awee/gkqIb5fKor9aFmPlvUI9iCv4wMjV3pN1S4=;
	h=To:Subject:From:Date:From;
	b=ljrgA2K9kmDwigPuD962eTygqNB6w57NXn1LtHwB0JaYldaINo8KX1hsQfL1CQrhO
	 yCfVrOPDyHLUdvutWXIM1td+gwLGPrZjNE2AVcMLGO4asxayd13/JJa0Zn4FkJ+dDd
	 j95PO7hcFA7vjx1IqO3kJRpw7JgsOd7WMnb/R9jhSTqn7Us6ej+96mpZTI8X9XBDsC
	 Qrn7n8fNnTcRtzcWe+luAzIRgD+KFjDz4Yd530zm7XhhDAXdMUXHrtqh1a5iOlnvD+
	 hUmo7rAR/8KI+AIuPzZ9pLN8jteFw5Iq5nsGnUPT+iJ0QNQptVotKtyqwL4ALFHojQ
	 fTqw1iNJqjYmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A9ACA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083443369.2996.4720509397822950363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287b3bebef5cffad59224651c31dfd65a78da008b921594bf67dd6ba9061492b
Date: Thu, 01 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790834433
