Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116701E7C3C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728991554; cv=none; b=gFIgx17ORHeoUgy61RdSg0P2lAJGko884wqr9bE/XGXjnUE32W6tzzNbSkV5jcwJZ7W1kc6uW5yTycIVUfZzMhaiaA64mDteO9WLT3YxDpzI9ouhy0bA3WH0uBtEo5Ly2YMJReIrhSm4axtELfdK+F5LitKtDkNSSYUA/j/qmFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728991554; c=relaxed/simple;
	bh=eyvHAEufdKtuHCOA+VGkv+WkbR0Uyj+71vL2lOGjKrA=;
	h=To:Subject:From:Message-Id:Date; b=XwgbECAdBfk/eXOzQvqx7Baj+Ld3zWTv4vEdQXACKOjj6kaPcNouo7w9jZodTgw8vZp9PgOBEx+8HP0oY2U6hSLvBPitK26OF4iV+2GlZtsb8f6qILSa2TcN3MX65mf+T+08Oej4ONIVrb69wYWNsa5nEo+VY6VjRyYSvyZ2WY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6qmzXHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6qmzXHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29BBC4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728991553;
	bh=eyvHAEufdKtuHCOA+VGkv+WkbR0Uyj+71vL2lOGjKrA=;
	h=To:Subject:From:Date:From;
	b=V6qmzXHjvUkN4eoHrKSk5JR9pdU7cDODaF8BjJnJ3UDrYnj9LJzJ7KUvmuF2UmyU/
	 +LmUv30ftuFsy2Lv49dXOQLzV3NTC/PHIAV2KMGbzqssgruZqvshXQ8M3YT+EGhBaN
	 EzWOwbOVwCxFCgeT/EJrHPs3mNtjYPLexlR0Tzw6tulWpD3nmvX0t1TTrG7NUTMm0U
	 405/SBWd5dwfkNxVITWSAh7LTVThG4WCyOfwcLYpuw2IgMLzVcnsBOnXuj8WV9YxrC
	 xSyulK0v6lvOU58x0iIRlXS6WzN5FW32sBPayACRJw9MXIEaiOajpwVzSOJ4jum9km
	 LocubiZm55hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FCCFC28B
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899155359.12676.7804864563787938221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ca4fed8c415c7230664cb95d476d8bb0164454dc642c850df281f7ee4320e9
Date: Tue, 15 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728991553
