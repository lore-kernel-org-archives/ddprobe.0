Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC1E175D50
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739252395; cv=none; b=HdUbjOWoKDzyt1k4ziImtxuBSghK6f2zgI+ctfcCjlafeArN4jL7SruAyqcbpsTwf0YfxlnXyBqOJlprPGekHT0STKQx9MquXp9a8CNyYDnkddEt1iw8OZGVZIJtRkWlcphtMVS2oeABjtR1zolz1nKTZCeGXmjMvpZJM3FVptk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739252395; c=relaxed/simple;
	bh=8N72O65JaTnCqfg4mrcxIkPt7ZcLFQzNOzxpXo0yTV8=;
	h=To:Subject:From:Message-Id:Date; b=RidCF+dwcnHx2y7aW+bpYuCjj1g4AS6mKBBZ2kJTMcl4GStn0y2wzbf8Mgx47zAZMJXZlSb1vucgTaSbK2XudJGrPAS000Zc2nuFdoiGfgx3fYnbrrFxvl5Xg01vIoWYUS23iBHyCQ9i49e+CzXKlasONo7ZaU+UfE+J4OoCphY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpN1uuQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpN1uuQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A81C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739252394;
	bh=8N72O65JaTnCqfg4mrcxIkPt7ZcLFQzNOzxpXo0yTV8=;
	h=To:Subject:From:Date:From;
	b=EpN1uuQ+xwTpsuAZsUE/9HwLOfEC5Ke3f/rylgJkXH94bWUSBoBPCec8pebLCJVsl
	 JkVi4lC9n/xiMYKWL4R1VuNJJr7v0VoxVG446V01gVvnjOcQn6ziJb/Evy0+tycQcG
	 xdvmLfJYCrVLv4mOM+RKq+9tx8ZNSNp65NLZz3wzD44lp4xOBTxJ+2j0XxkHcR3LiD
	 HrjEbgSgfTL4xBtYGWa45F8JIGlriIApJhoMjb/amHBuK6KXElQCHXl+nJ0TNobD6V
	 hp+Mcp6c0WgBRss4598KBk3URTmZDj44c/d7uBuiEwmn9/Rs3gVzdkpV2FLkk4fY+9
	 Sbhyd3ur4hUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CCBBC0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 05:39:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925239399.2361.16662231358181841293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0a2baec6313576aff79445ffb85b6ca58363e5652ec1a03e3bdeb7ce09c278
Date: Tue, 11 Feb 2025 05:39:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739252393
