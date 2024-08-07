Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7AE13AA2B
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723048554; cv=none; b=OSuX48BAXcOMw3cj3zFdk8gufqWZHsqUjjgQim9bPXG1MCPdINI2M+wnCRTJ8Bs7i5juhPWD4tIEIcfWD/j7jjMIDN1hOxj0848u/dQK2dOUwQKr4Koamd3/0y/JAxOjLqshheE6bIecKATJTzdcZGC+NjjruAXZ/JK44zwQ+e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723048554; c=relaxed/simple;
	bh=OPzWoJV1dMEiKKDPW9WgCrxsaRWuujLSZE0B+Peb/3M=;
	h=To:Subject:From:Message-Id:Date; b=SaxZJMrU7uLZyCnXBB2IDRbn+mByNGZSAMz6b28/V5fDWoP71TcXz9dIc8crcO4ALwzHg09H/ay+7ime0ETx82UBNVMnf57IhVfPX9kvr48VVdWgoXcFJ0r1u/LrUnioCcVnUOt24js91Saoj+dx+68hdMxDEsksIgf9B2J7Z4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy8BABoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy8BABoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD0C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723048553;
	bh=OPzWoJV1dMEiKKDPW9WgCrxsaRWuujLSZE0B+Peb/3M=;
	h=To:Subject:From:Date:From;
	b=Hy8BABooh+MJscnKYsZqQerH04icKwZl/k3O/i7Uw1z7MgDo5kz7JfO681LxdvSiD
	 o8wkDZy+V/DDFpbQLR2fKn9yteWWTFbK0GkG1nsO0QHoFyXzPi9wnWV4jhfwwzs/mP
	 9FxRZVTvKt9gm0axLMXit+wJ7ClppMAGj/o2aEK6UDUpI10MabIlaPmkUC2kHCoG5p
	 E9+ZZjBC7Axy7iOdzhbmJyLydhjCXZq8RRb7HSlsxHZB9Enfw1Z3sZ9e+Qq/4Nr1Rw
	 33Y5PZ9XVFDUWH4sZmrzBP19V6Lj5wShDJqKC+jN8kQ38Oh5xxS/AAxlAA/qtnL++k
	 j6KZrLa5A4tpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FECC52D73
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304855359.30203.501393106162991961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386191971a10b63eadb6067379628ffe05af805932c3b7ed290ba2b26613aa54
Date: Wed, 07 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723048553
