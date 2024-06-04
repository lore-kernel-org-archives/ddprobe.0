Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E528174E
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717536383; cv=none; b=HtHqoakAqLnw/kc6pfhCzXZ85tE7rQrXduZE0NgjQxZkmLYp5ArOZamnq3pDRpIDOGOMrsio7H0tQPkRPzSqg+53bU6/kPlUomVZmNVn01v+i9nEZQ0cFXCnQyXBU2azmb8qyw88SCQ9tERgSH4MwrLdf+7j5BmEHmQWfQ2FODk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717536383; c=relaxed/simple;
	bh=akLlXxd9si4dIQ5AfE9DXdG2jm5gmd8o+b9sv8qgJaY=;
	h=To:Subject:From:Message-Id:Date; b=UKUWlnz56rvMtYnIcKELOUBWEMZ/aRUyKvCcMVWbT5wqGEP9TRkTykStK5Nvgp6jphDUVjhAJ61qGvDdL9Q/MR04YxXU4wUIV6iA2jV8korVerpy9LkvYvBV02+jUjkGK3Jbk+hMi4mdPu/tTEOSxpjOliZojQqnVijw2KIL8d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCFiHZLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCFiHZLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC56AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717536382;
	bh=akLlXxd9si4dIQ5AfE9DXdG2jm5gmd8o+b9sv8qgJaY=;
	h=To:Subject:From:Date:From;
	b=fCFiHZLN8MKGZtmdAVNGwDRL7D1f4UWPUQvyaTLqlwk4kn/0i4YsHWPRwsES8JYwT
	 wGA08jBPIlwRBg+Gf6c5N8c1cuGyYcGMa1j4x/R7Ig0ogvXYK8Jn1XQglFhRWLJMxC
	 4iY15AsnfZfkPchflRzw93yC++MKU8PAed2TeMLtnZKYmXkwy47uJtrabYa99kl6aJ
	 j81r4esCmFm7L7Ua7Tg93+LQpi9qfNsly6PC5Iw+0YqFvfAof7vTIuRvTCS8Pf9k7e
	 fHfjgF+nUeigR1mlFb6dAxz3jWVF5dFL47h0sV4nXLR7DVlJSscZT6IOeLeLJJDWh1
	 nO0z8aH6zbysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56D0C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 21:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753638279.9212.5023069379555015541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5e781ccad92ee835d6ecd11ba6e1b02194f07214332623c35ba3be79750360
Date: Tue, 04 Jun 2024 21:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717536382
