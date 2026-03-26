Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C755C21B9DA
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774513493; cv=none; b=i4h/cNFlSpCdXziMoATHzXxakMDXw4g2FAsZIMEVDmIicCGlp7yZTwxdJ4fABba2Ofe21IzCZdrggTRhvya/UuUJsYrnEbJSKhlHQnGdlKW4d59Dp/rC6fQ1a0kWHOMM5fOcKt7kPbDY6jfAwew+WmLsXuRuvNwojIFK78qwKxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774513493; c=relaxed/simple;
	bh=XBe4j2miO/pYPYEIU8pPuVb405jDrzWYRwexz74uW3c=;
	h=To:Subject:From:Message-Id:Date; b=D1YOmCE5NHdc3NXnIzuU9X3oUqH7BvG4+KdoqH31NymbJubzQ+KsjJ7nTqwG6AKSt0g8IamO4dsiNXppeuiAr1k54XDtsvqBtUxsMS2qKcY0EnvZaf/Kc2Mxv5G35RJpCWRpPVKLPMg0bZMTqOXzh19o5wg5pqQ5j3k9qvaVBew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFde41eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFde41eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DEC2BC87
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774513493;
	bh=XBe4j2miO/pYPYEIU8pPuVb405jDrzWYRwexz74uW3c=;
	h=To:Subject:From:Date:From;
	b=tFde41eAIP1Yaqh7cP4vMuTA6pYr/NbtfqEqA1nLf5YTDsIaCC4/ZCSov19eikLGB
	 fAVo8XXh9K4APYbInuLlbPLFjHozt6rx8Rtq2oDtDcLmgYiWHY/lFHIZrmoYWvqEQF
	 66bRXG/+rWrpng9RMfYUIq+QVAIeD3Ycb5NANa+GeiQY3CAV3Zbojg1vRz0ZTgcG3+
	 TtmiAAbMGsQbF1AdfHI8iGxwek3buS9k2c8rHtG9p0GDwg6kIhOoCFhr2zbDXX+9CO
	 FBnqOFn3i+FsFv/z5Sm3Ek7T281GFJ5As/hU9c5mNywK0iwwackv09uM8XIyGQ7FIO
	 8zBTZprWUpfUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA7106F2F3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451349358.17999.7962439070933070126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929a52873af192bc2ab02ede9738783481b3bd17301c68800aa78a93a8869f4c
Date: Thu, 26 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774513493
