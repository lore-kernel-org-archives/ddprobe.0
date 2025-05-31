Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C6F7260A
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748714994; cv=none; b=vCHlxWdRQz8t8wV8OiTG2c9soHd8QwIKo35qcBlVKdXCBp0Ly8lqDWUEb+vNgBQa4Jo/vMquhgO0jQF5diWsC3IGJEXjuOx0wNf3Mv1Y0U5v/kRE7EwgxHVLNuGuqTf3cAMNZXBw56gRToOyW/vge2io7gR5NObfSMFh5IA0d4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748714994; c=relaxed/simple;
	bh=LdWer2RbP0efd7oUbC2WonIx4oiR0mLEz7hikO59OvM=;
	h=To:Subject:From:Message-Id:Date; b=QUimEmM7nKdrQUo5Wk+UQAURi0DKmDTGYYWztmfYF4+EeBdKA5RNfIMmWx9moZFFSQ1TiHZ+gcdHZcmufhcNtGFeZQCaCb/5oOydxdCZfFJ99BVrdcGeGv/QzhYqr0Gi6VCW3jx6RGLrDdalOqTmtw0MefsohozFVns5G0+Z3b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIXiBUEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIXiBUEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03FEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748714993;
	bh=LdWer2RbP0efd7oUbC2WonIx4oiR0mLEz7hikO59OvM=;
	h=To:Subject:From:Date:From;
	b=rIXiBUEqE0tIGopqEkfJJZF97JdkNzHMGyWsmU7yVQaIEMPXfGz5A1ErbMXVGql6R
	 F13Sg5SfokFHnznl/y9nZKu1qfpJKoLYL2Di75VC7md6k0xWWXCFhChYHx1rwzWrD1
	 /AiByI5IZA1nTiRaqN02lxMjOx18M5kSSJFoVnR97x83oaJHSPQ9//E/6QYv/W0Sz4
	 QYCmmmFNe2/Et1hjbP4ObwG3//byeFn7zoim6yZyBtJJDEAIA447LJx4SnXilxTJ51
	 H+rRH03ahgnxgMLqAvKjSHwdttB/OD+xMTC/p6BlZmjL62lul3nEJfxub0ROl9OPXC
	 ZklQLv1KB0caQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1B2C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871499359.19245.5909240623153752963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c7d101e210877f078eca571272db091df9d719d549989254c567cf0ac8cf03
Date: Sat, 31 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748714993
