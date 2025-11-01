Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5077081F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761988794; cv=none; b=vBOFHq5SkrqwUPFDDLGH/MHLdupsoZ/HPEHG0OcMyOunjLbP6c8v7ECtQDQ9bRTJqYvDxn7QkZ0IE6sR7wM0paWyiZu/8h3+8er0szouHal/+88We/ERTPbKPxiToSgOMJDWDh7CWga8vgfmNqeVFMmvbM57iAC+LNJyYrGjziA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761988794; c=relaxed/simple;
	bh=GvFdmg3nisxRR4uGEdJVAO/WPFK7PwzzWNA0hdkJtBw=;
	h=To:Subject:From:Message-Id:Date; b=Fip9qbnAgzjBxdCr1NB0baTADEwM9ks8gIRWKVUq2Wzw9BkTa4q6Dk4kqtJiESblJpHkY49uvgwu8JIds//MEziVq0j2Rk+2N4XkoFVCcL2R3te7OY9KEh+V61hvOS4HnyMJ2LGLTZkMjLxzFbz9kQQ+1brHTpmjZxSyW976RBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StiDHprm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StiDHprm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761988793;
	bh=GvFdmg3nisxRR4uGEdJVAO/WPFK7PwzzWNA0hdkJtBw=;
	h=To:Subject:From:Date:From;
	b=StiDHprmfjmh07OYKz9kNXJUIyt0ggQZxePk4kjF2bxq3a1UmvbyvJLYGMFBPjKio
	 nRZV/MRgNXgdrMLw8y7W/w6P1Ru8P96BVWmmsL3i3Di2Ndu0lfxjEvkeVPPu1Bd2mP
	 Wxso4PfPowhyrHvBfqKvI43gdiNaCJnaDrzi6JIycLCftQjdPem1Eu1jeSo8LG1R3K
	 l1+jhXs1Rkk0dnMePwGaV9/GGj3lDVczNZ22SLHiI/bhJ7E38g6lKW9t7aYFMKwYzq
	 taNCrkXyGWTslVRCMfBocpDqmtqHvhVc9lXUucVjZxTmlBnbcyXY8DIq6qpjlm7AjX
	 qJwDvvdYXdTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0F2CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176198879362.14624.812744104585289554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa3c941be8853b4966fde98d037aad5294fe7970437bb502c3c8201ad9ea2ed
Date: Sat, 01 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761988793
