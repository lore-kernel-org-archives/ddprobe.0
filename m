Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369F24C97
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767254034; cv=none; b=KUY6C/1I2GOIgW3ifkXR7YSpn0e8NQjJcmVX2UAqd0anRG0HyL6U0US88E02A2SasM7avN0Ni0rIsocK1xLAr3xf5gfqZYLojzdh2/TgW8VyRdGZK49hOBqV8UYmRckDVjBaU/Y64Zg4rQCej7ecTFImTF2IjGxeSzLSqoSVsA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767254034; c=relaxed/simple;
	bh=ZQqJLisibLTuMZ3g5Kqaw6J8b7uiX6KD3JqJQ8391X0=;
	h=To:Subject:From:Message-Id:Date; b=MtZLpCMlYdC5xiLaRRu238v+qFBNc9JW+EcOvnIsSiYBeXmTg3HS30UYCI0m7SsAJYpIWrtvsORs9Y8II/F+M+H/mpfqEGphWFBaZGuNwKQEPoNe0Hzu0N/JowKcDJldYyWXHAoTnOgCcb02OYbJOpLAr9r4qIgcpZpBuryCsRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdQu5ocs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdQu5ocs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D01C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767254033;
	bh=ZQqJLisibLTuMZ3g5Kqaw6J8b7uiX6KD3JqJQ8391X0=;
	h=To:Subject:From:Date:From;
	b=LdQu5ocs57kxHx7XELO1uf2TcdKStLtx7JhuWW9SYn0LScVjRlfScooVHSFbqOZbK
	 DzqK/1d65cy44T9b4W7s2/Lui4GE3QJBjrYOcMpTPqeRPSZLyj3E/A7FqCDQ4i0eq9
	 KYBhpsnB0lMneXU/oHdFXHExN6qFVB/eMLFD6FgbRlFyAnEQHjf9SyHw86VrlqentQ
	 CbwTFqbU2jEi1rstZIdmdeNANxw3mEuWxw0g1yxxj+irLrx6L4QURt8rbHqRqZL0Jx
	 rFu6IdF8dpEYTp5Oim1MZqoeuV1y9gV1x8V4VtEtOnAdiCSNf6DRMWahSKhark+Gdz
	 Rsg9Mv7rjBYnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F93E9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725403358.17829.13986026253855374913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feca8097bee00b3d7260f18c0b539af93a80605590072313d1d6ea7022677346
Date: Thu, 01 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767254033
