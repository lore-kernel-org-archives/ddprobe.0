Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD8828466D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768779834; cv=none; b=aQ1uULyddlVolkGd+yx2n7c8vj5t/sbsLdjA/OB/KX64hMtc28NEMFhWVpVGfKAB3tLRcu0wwD3hXEbWyD55ghVBQAr7YU1gpR6ow4iluGYR3J4zF6DCF6XnUjVvOVvTTWuQ01k7LjoLunukCrKrvl4zHGHbwApWw0YOcx+G3Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768779834; c=relaxed/simple;
	bh=RyS8cQJwbdKdTKUDyZX/F+duCQ518FFUsgbYSFPvK9o=;
	h=To:Subject:From:Message-Id:Date; b=E5p5vsY7Gttq9rYOm8ymH7vKDIPm4alVO9wFzu3VZ+tkQFvWuATy0OJtECh+5PHoCyxPyF/G+LGB3wzVOVj7qcadSxAtbVnkQhNEA37952HrHldYS67Akk4Ye7eH5+zaBPjG9uGs/xmJguAQFZ3WQ/n/GXaFiOG4uwG6tLnzPBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDdBUe+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDdBUe+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768779833;
	bh=RyS8cQJwbdKdTKUDyZX/F+duCQ518FFUsgbYSFPvK9o=;
	h=To:Subject:From:Date:From;
	b=RDdBUe+VqZ6P5gcYMyZlch11Kp8ORh36QnO4QfE5gDiY9SD5ZoT2zbWn1I+EUHxhe
	 R5DL8sM/WdB+zFxZZhSm6Sz4a/UPR6l2yiAi+qnlUI2CE77nHnUZkQxtTtgbPLBFjc
	 TvKp97MBnYy9hh4acVlLXXdB+GhD5xJDE5k5bTG1G3QyaBCh70eUy8yT+DckktW+eh
	 vdtpBJivYFvIxXV6uJmHexgI0SoF+EIr0QVtM00wOYio6zJiBRiXM1wETYHWnbNvUa
	 SYNdQuM/c49Ijw81ScZANrnUrerW9tu7uvNVEf8D6WSkLez/Sfqz0utazB6dEJywkP
	 DvCBJxru8DiDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF5C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877983357.23366.7571295482547639026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdef82322e08b7af14e0bbd0472a539e6ab90a6b9b85ae0dc0e9ab7e1e4a458
Date: Sun, 18 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768779833
