Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD0F4430
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747802394; cv=none; b=ThIc2rIJCU7R9EAbXE8Gej9Qn7RKFHO3Cw1Dkl7p0J91GI8TL2WvSqgUTS3erhM9xr9GKBUA6BFMm5HXa+l0n5/xjH4fHCYrxpAyda3V5sQv7OprhKM91w5P+u63tA/L+U0o6CA/l/OpKpvfUdusrZuT5NWHUJ69eE33jdxOoag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747802394; c=relaxed/simple;
	bh=zyJznrTLG075hVAFvauGUnc/ii1z8jNiryzlRjSguD4=;
	h=To:Subject:From:Message-Id:Date; b=n1ZzYG3p5/cWZE4SgZmYz1vcfJl6wkA2dLfWJXBqkgz5qbosekTQp3jQET+wlIJA+dyojYTfuOAHL68/rSfUwG0mZsIEzbnOxnD8m3xXcsLWTu0Qjk5wFJG/K34qc8HqleC45WeC3kqZSvnfcszUsfCoYxWQPMdkSlmYHPhHK24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjZ1JSGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjZ1JSGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A799EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747802393;
	bh=zyJznrTLG075hVAFvauGUnc/ii1z8jNiryzlRjSguD4=;
	h=To:Subject:From:Date:From;
	b=rjZ1JSGjCYCMlFBMUY1CriDRJR2aL3ZFY9v60sfLMjDC0S0/oYGy4PeoTp2DK0szv
	 g13Mn3IgaFo/5JnXwMCIXPnyG0P9eXa28BBQC/A1E7Oj8XAQULsvWTqJiFULUo5/wI
	 0Od+eM0kZ5oyEPNLbr72UsATbZ5Ky5jG2GiXwOoXSbsK7moBynwO3z0N4m/cvxrbHY
	 AxbAO/bGjevCSwD8kQgcBFW85pfTBoX3WsQe2r31RGi1YQgM5LF/uwbdPJ58I0q1qe
	 Nj6L+o7bYWamAyvD/8j+9biep4uHbZK1ZWnzmePqSl2cOHI3f1GXQ5PGjSQnYTP1at
	 znQ790ZDylfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C4C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780239357.27041.13479159647203678329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e15f1cb7d9f57c72e0beb951681ab8a465f7bd4e6c2ecdf3842ed5d345e5576
Date: Wed, 21 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747802393
