Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C443224FA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746057594; cv=none; b=nU5I17Mp6Af+ZNpYbWehIoI0YfHh7cUHJXJb89Xu8KK5/dfBJ89zyiGpP5OdXRKO7d55Nr99UBPO8g9oyPSk3hlquBWRFGNy+we3w9uZansOFYl6ls+jmfXDj1SoypH6fi6Vkod+2KGqN7rSYMpl/cUfqoq0xcwHdC2QDamO7PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746057594; c=relaxed/simple;
	bh=H1qd5fhEzTjDq5xaUUgcINgI1qhN57pvG1YIMEttevU=;
	h=To:Subject:From:Message-Id:Date; b=vE+jMdUAvsxpcHa9zJPahHzyF+MobsKzuNQ4CKn1qzPXj5bsBF9fDpFQGshyyRSZwMvgW21zlSthL5IRa4jo8lZX3KDZQkgo3Kb6xoSbl031CR/HTrwvpSdmEjg/kmhyOGYvvFGNp5HVmFBE4GiF8DgG1Y+8qjJGfYVQ1jYVBaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6yg0WaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6yg0WaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D75C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746057593;
	bh=H1qd5fhEzTjDq5xaUUgcINgI1qhN57pvG1YIMEttevU=;
	h=To:Subject:From:Date:From;
	b=D6yg0WaR6MtgfhfTBK8r+FP/ssDKsu8pJbJ0vHHwKYvxMrwf2CMXR8FVipYkXXTy2
	 yK1k//Z7YvjHKMaS6Hafd6P43ThSd6xh0MmVD96Y14mTuODDRvvTmW7QQuR/FLyI3+
	 I+oF3hK6/pNi+E0Yw/vRFqtnzks74ruQhsvsL5A4/ykBwjEOECS08IXkzX57/r7nAv
	 aH8Bilw8nIgnyFRy9va1UiP4H+a6dgroHvO0i0aEKjER31OW0xUUUO8wB4md9TmzmS
	 iIeTlbBsPokdHoBJeHKxNe9WjoawivfzovEaJ++kRZbJVmB5j63sC4o+Os+7BKvDoa
	 ABW6+Xw6MZn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB67C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605759357.15373.17269326145661495247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a209b24bd05cd11bf94fe803923635c9e761e2be6ac580c312149189feb0c4
Date: Wed, 30 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746057593
