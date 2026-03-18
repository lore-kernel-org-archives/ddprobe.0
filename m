Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF8B2ED872
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773861893; cv=none; b=dWM2lduvaXxv+C2D98SUfFWrRkSjFG/4q+Nzboivtc86kog3CWtCvGn8YgTCTf8akqv+wC61NKo4zx3qC6qRD4XVIl/G0rNS/VHdpT9KXoZqhX7s0G/uVtVJ7N/NMJ9F3pNaG3dN4jEZfEfuALnMAN7WdQqTHWtp4hhwsZdE/XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773861893; c=relaxed/simple;
	bh=dDGoFnvXSE2w8KYFC4bt6Y+onsuHhUxdfOcB263HtfU=;
	h=To:Subject:From:Message-Id:Date; b=NmUkZukQdcWXJHXm7uWCzb3/6vfcYh3UH2aZU6vXtHNqB6p4dGIVpoyuyZeycqF7ZreRZLmVfYHetnkjbtz9iXXla8Vf55t/WMkLUVOvjb50HN6Omy+t0sl5pVCjBTRdpJS8sxp8wr+Q2nKgAKkm9ljhOolOWssWKUtcKowONLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7oIXB8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7oIXB8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF9C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773861893;
	bh=dDGoFnvXSE2w8KYFC4bt6Y+onsuHhUxdfOcB263HtfU=;
	h=To:Subject:From:Date:From;
	b=H7oIXB8g0sypTgAyyd8vYpzq9B2/rgBbwR9tpUA3ONcAFcEvsZPFZtknFOdqCuut9
	 16ZYi3SBdJFstutuqfw7wgGsmDQUArwNV5Wgil0nU6RtOkgSWsDsE694vuvPuFiDnO
	 n6qNBlHBmwp00a+6Jubc4yRAqfT1OLBp6bx3PCi48vP5A13iYBsC0dufsfbV0SU33K
	 VaKuXp4xQU6aCFLA786PyyY5lV9vxYdrPHWs4oRnmYfN1nzzZntFoWACuivIJ56D2e
	 Vr5L6swBrMd3Ybj9OYUA+Fj+JDVc28h3niC3w9kWBXZY2eqUkg4aSVeuf608D05xP6
	 N2jC2eHVigKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C18107760C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386189357.19178.12598746557814691380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d799e51afed35fa1e6483d43ef37a7ace9c3370d126289f40ab879a66c901b
Date: Wed, 18 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773861893
