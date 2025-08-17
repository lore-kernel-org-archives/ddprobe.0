Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259792253FF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755460794; cv=none; b=MjQ+sMPdNtUKKyT8qaqM7PGByO8aSd5BBTdAZXoAw72gr7K7mvWQGwoCNrz2PH+aTLfCf1eUNRDILCJh3ljtPZ3y2Oz0qHPZwXt/gVYtT5/Xk+6JVxfkecwi5VdbA79DQW5MOjbmPQgoRBkDCCAwjIYP/gjT7jQMK43ZraYPoJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755460794; c=relaxed/simple;
	bh=TSOtll+EdGtjJsB/QsB/t0FelyW19GyjBjOdT18KgzU=;
	h=To:Subject:From:Message-Id:Date; b=o+puX8dnOt1FrbdekyNrXBP78W/dUwZ/fg0xmQxrSfwrwDxntOyBjL1jor7VcLo2Aruj3AwYYk2R2cjvqjuNiYtApXJSiVy/uZneA5uYE+eKFFriXBLc6gSMqL42eeSxbgfh2kLh1q0oMqwwfDFWpnGDIiTZhlMA/sWNf/PDytI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Azf7GOd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Azf7GOd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755460793;
	bh=TSOtll+EdGtjJsB/QsB/t0FelyW19GyjBjOdT18KgzU=;
	h=To:Subject:From:Date:From;
	b=Azf7GOd6U+c/LYjHeFEtNdQUu2NUXVJM8Q3xnh52mjQxV3JNRGOMYwgGTr9T24Nle
	 2iMfwm6c+VVyHiDvP5x5lwRnvOz5oUF98qcfpySJUO+T3IeNI+4JmuCIChwSjkAAPX
	 K2XCzK2hEM/bp9uvKNswP/VjxlwCgrOqvudfUylXTqx5LhfZt8pAJTdTzCnEeRy9gh
	 jzTmOTComlc3w1h+SeajK85lilNl0uqpOcSEie16ekmsXC98tHAqgUbJtwfVJKXAG1
	 2R7Wa2w5a+MI2O9JI9xyv0lN+Rn1MioOy0FGvXv/FLPZF8KopRj5zjimWrsaiXRGVk
	 CIAVrBDRvNIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5DECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546079357.8228.4110545953920305491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6606aefa8e800e1e76619a48ffe00a1b6113b7854071a2aea3d6680446197dd
Date: Sun, 17 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755460793
