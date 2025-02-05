Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB731FE479
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738715754; cv=none; b=rLYUb1n7m/BVcRtQCKo00/RfWt91gi0oPiv6NkMGKQW2Apib5DmBZ53OV8HfZLjC3xtzsIwHPf4j2x+Y5OhADQX5kU5DhVmwl39V0+Vt11/CD/JV3ezVUXmX0g1/rNMMqBvIqxxYDMxOh5bruOo9AWkYXcwL1a15thngKY6+zKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738715754; c=relaxed/simple;
	bh=Wk8y3cJwArLMffU/XKm/Ef9/yqwGchKxFhKF5/IPNIw=;
	h=To:Subject:From:Message-Id:Date; b=aZXSVjfmoIOOXLY91nNQ1Fkf+4YB66v0tQJNRp3+HyOEU6oPFpsjvxkn9iVoTfopT2kIGa2ZFb3svE/jkma1b6AvCtIqHiwMZUuVVM5kw5Vbi41HpwNYQgohKMBz/V1VMTCmHIevVs7g/QBKKTJmKtTMWZXv5/mPddAts+4oUO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Npi+tGQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Npi+tGQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9210C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738715753;
	bh=Wk8y3cJwArLMffU/XKm/Ef9/yqwGchKxFhKF5/IPNIw=;
	h=To:Subject:From:Date:From;
	b=Npi+tGQ67DVCtsqBXBC4bFoK6njsD52I8IVg0wgEJ4OKxGqovgo2mplhe4XLywgQX
	 1zxMVp263w2i6YfCOu1grQxaL/HJm8b3rk3C/0gQfdcNLhLaw5RiHmWZSKFah4uMLh
	 Lsz2Fx76ip9eqb3YmsBFa+dG6ZgVyHyw86FJC5u/mEr4G8/r0C4W1E834mULuQ0gyr
	 Pwry+8cWq1LtfWY9iAlkPG98+ZHATt5ucXTJQ9eSBrhF7QEckMWiil+DbD70FGjUJg
	 AYsYyQVuP4jD47cMB5ypuUs/iI2GNmh/wnVBMG2WKvRcnirsmToFaLI+bVpHUecViA
	 LJQ1sgkW/ACDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531FC02193
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871575360.4748.3827872551921198319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03138da229ab3278954ae5a0473e164708f9405826a57b6e48e29c0a89a704e
Date: Wed, 05 Feb 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738715753
