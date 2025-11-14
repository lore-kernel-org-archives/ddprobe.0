Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266482C1786
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118594; cv=none; b=K9G0j19CX1WKqcg9FtpNrg1kiIERjSIum6VhfF0KffcUrYRpzf+m24Zqcuu3DwHxycKyYBVXnhF3Jv9nn3+swTTQbwDPs5Z4eucjXxjxG7coCZUEfyXPag1q8DRvCbE8CIr+OBQifj0V9MSWoA2LqhgsL5lZBsMDdFsDm79Dys0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118594; c=relaxed/simple;
	bh=/LG4VJ3q51WVwmsGr66H2uf+d/weVnZG9uBCu7WXkjs=;
	h=To:Subject:From:Message-Id:Date; b=hhoqy0/D3LA+Fkiw9VALvNfBdVL3xI5/puXGm7Pptc4Q8z2AdKbJusqPS1vs+F/fx6U9LBtpPRvZwp+X757FjsdcTT9jMaNHnUDA8Ukx56719KqSU7If+n3g0dAtXIWfjgW3eEKrrceQkcsB5z9sV+t04ClocycqGIqNiAiyC4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCVe3iCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCVe3iCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAF4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763118593;
	bh=/LG4VJ3q51WVwmsGr66H2uf+d/weVnZG9uBCu7WXkjs=;
	h=To:Subject:From:Date:From;
	b=KCVe3iCfR8VePEbB5Bd1iGNYJ79OV0LIPr4QY1WF0uGl1N3OR+eV1OvRrhPoK3eru
	 kAsO1v1SJVIYy0Bd19/aUEwiWTVx2A12I/xt2OZuh184YY2OouHqzmZ/kA+L5Q/ava
	 rLdt2y5sLWJBhV1YCRBEl2vjFrYBHcADGaB4cIU+qz0Qxz2cQ5YX22dvskLbdAVXr0
	 nmaD53zZa0kfL0Sei54JPO8BOI7Ap3iIwz1U6Ow4z7StBiBcOQZVtL1O//NgM7E/Fl
	 kZVuUiuzjM/mOfJVrIvHhTGQrHaLvlMtC+CBfkgmvPCGnYsMO8a/XXw0dXOG/YCvh6
	 g6PPKBDEV4mEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8B9CE7AB2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311859364.9341.16821511034268078239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb5505d5e119bc0b5c82653b7bd2823473bb5cdda21c65425d42628e8faecca
Date: Fri, 14 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763118593
