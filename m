Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E2733A9D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787351434; cv=none; b=jcgbPxHJCRYIZDd9b/CC+fh61R/PHixXC+NUMetpcV6zjOkKa0uCmkQzO3IgNIk31vShTr3fOJuJ0HR6h+6a5suUyYu0G+efJk10Mo+vbpkFTupQ3+Cb82MrqNDbu8Pp9B+4LA288w87iIfvg1MOZ+yWjyngIuklm0Mhbz8JWVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787351434; c=relaxed/simple;
	bh=m6Dq9+LPpQcI80I8itfvCfP8S906T9/jjDz/Mra8iSo=;
	h=To:Subject:From:Message-Id:Date; b=b4+siDKUINzOef/a/HnVYd+wrO4SC0kkhj5GAF97jn9c/FqpKRDVKtj1rf+NUSt4jFoKRYrY3jf7kpPIB7agbbW753JBX33PHdt1ueVkTttXwKhAWn3075QdZCitiT2nsbQmCzfCXftd+l7B29+R6jXghUVynkgm/IdQ/rM8s/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEYzz9NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEYzz9NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D1C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787351433;
	bh=m6Dq9+LPpQcI80I8itfvCfP8S906T9/jjDz/Mra8iSo=;
	h=To:Subject:From:Date:From;
	b=nEYzz9NWDKjE2K3Jtu0y4CiT0lKn0KwrWT2x5KHDyU/6M9fVPTcbx9Oq7dP3n74v4
	 ujCIuaBbWGdjZm6J51dDrhBsLUSXr1VYfBmLOibUU2A8xWw/e3+uB1o9c6+J4Y1mqg
	 dV7QRqogV6PN0CUEZQ6g4a1WQfzLtjUqNveNTR6GeEPVFpKhkLPklyxihSjFNJPanF
	 K+W4K5kZc7c1O2eyPlfcNfVoTYrS3P9JwICM1NT7rWAibq7vTZcWLXg6d+jolysAp6
	 ijDB9YUpUED3lojMuyaT7ZcL+9spJilrm2lW6QaeLd+xe2cgxw8QdpKzwk6DrM+OtY
	 d7ROCTc0x5T0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79FC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735143368.29186.460581874216155654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278aae218b07e6c6b59c34daa02f596d10cf980db9480b85d645972610e356ce
Date: Fri, 21 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787351433
