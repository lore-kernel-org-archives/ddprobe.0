Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301402E36E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752893994; cv=none; b=TaIOslQghdG0oTW3VJYGwHAeUBIS9N5uKxTyq3tmKU8FK2Tgh1sEESKVK3xzymeka/waBlvTLFZeJFMs7+gVEGvqeDy8sKvULss3blOs7Vb3o+KBEyrfaI0lfa9kk3BQfZXpJZE3JIIktxyTEn5fvJEY63XiaGRd2yndxjet3Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752893994; c=relaxed/simple;
	bh=IKJc0uKtLLNN3n0rhWDmWWqVdC7D5MXoBwTjH86VwAk=;
	h=To:Subject:From:Message-Id:Date; b=CXo6nlU+icgmGzGkdltSl/Sdc6y31bZ/DbYDv5bS5/IMEfcYog6TsQrxJKDwv1R412xudm2WZPGPdcfWiT4cqOPzh4ER11Dc6GQg2C26WrIUkjZ19bNnwhJUbihKu0Vl4P8rs0hOb4AYv+P5i8knFAPoVCF2pI8YXbj3igyKH0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCv9gUPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCv9gUPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCB3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752893993;
	bh=IKJc0uKtLLNN3n0rhWDmWWqVdC7D5MXoBwTjH86VwAk=;
	h=To:Subject:From:Date:From;
	b=kCv9gUPK1MkgWBXrfgqbEuhAdgMtapM77V7lUSrbX0j2l84uKZyGMdQyCYXdnBMDC
	 9mG3swQDpTuvqxZBlBzUg5K0c/LcGAiPGv0CjTaNo8sYY+DuFuC4DVviIgapvYR6PT
	 aQfJpM7iF5s3J6xq5uPsTTri0KtJQzKFKUtzFrGfT++Igk2JVwURJ8y8jcXEYPiMNn
	 9piaIh4qewcIM04kRs28rybYkw4158EUjXKO8Ni/e2LYTe1PRCU7ULD23uJFM61X4I
	 o/aZHFAMnd8oOFCbrOX2t370E5r7OOwxOCSRqqI9+jW6hj8vzUnsLmNawXo/AwSh3/
	 SVhs3vHELgfYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACB7C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289399359.14441.12372946218061580609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe945f89edd98114e5c15b9780a046402179b08497742858623414dd97fcc62
Date: Sat, 19 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752893993
