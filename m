Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E7B137932
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768691033; cv=none; b=aPKzUspyLR9HTs6SQ50Hy8Of8qXSyQgqmWWPY8GGriKN6vujlTZ/89Sxc9Xnbi+PAE7e02pydqGSLKcKQoKyfTQ6saEUq8uy12bIupMYcQwBdpAEFLtnrxaeKPHrR8hckJeviSgvaoSRXB9st0HfX/2O2UV1kQwCQ3gcdvZuZzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768691033; c=relaxed/simple;
	bh=bHpF40p1HZd63mWj++xqhKjYvlhTiIHgpE1+WATHxEg=;
	h=To:Subject:From:Message-Id:Date; b=LlIWh3E9J1PPtf5dHG5m+yHCM/fIDEFKKYbzml6ZI9cyayLDkNqTFMrVnIgpYHhfEXUR/4wCbemh6VPshuGbcxgJacGif4aGfWqWthPio09RJDGHJ+W/QP02L/58rWIJpFuHvKlczZqfVbPmpOPu96ex/y78oB7PZXwrqXQCXzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjTaWkFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjTaWkFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB76C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768691033;
	bh=bHpF40p1HZd63mWj++xqhKjYvlhTiIHgpE1+WATHxEg=;
	h=To:Subject:From:Date:From;
	b=LjTaWkFYQR0pEsJXXDRN3vz3xzRbFl+s62pPMNOJkNo82pkBcyx9ULtxm05ZE4GFY
	 kN8XL/raSy262AnnOw+6QbgRyL9ct7WnpUoPfvm96d5Vu63AU2wcm6863YJJ+SXW4t
	 5ZHfLp1E/ArydER9mfa1+hPJYUPJUQjbkINiTIJaL/WtCA8R0cG3M03Pp5sLNnAsK0
	 iND/epnGw7v0d43WV3TQXPpzgL+rfWmP3v255GQRNV3hBbgqhN69bTw8Cfeg9HULQ2
	 HziBc+m0L6iRnQEgCPlkSYI1LzeVdg9ndKoZ/YRA9787OWrCtPgJ7eOlilN9eo8Sg8
	 JAgiwONjMdNwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073CCA5FE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869103358.22384.4958619109195033459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f52586e0ac02957adc6d4be4e73bedeb91c67993d69b238f3815cf2c08c0b2
Date: Sat, 17 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768691033
