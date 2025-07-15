Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBDD19CC3E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752539394; cv=none; b=hSXjw0tQeq+uKy4T3ZGLc9rWEOfZXl7GVGLB4Pdni5O8hlINYCL1jzi+HjCm0AoJRUEFFQ/mzCjWPbfjJtQMN6vwrlcxuKDv+6aq6xP7Bi5NwpVJUwVAY3oiKS9xc2VUjs996vZO/HqDSh79ZTa0YIK8ZaEilrhIoj5ASVUBTDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752539394; c=relaxed/simple;
	bh=TTSj3GUtAutsHEzA3uXmG1HxaXrZvfWccuESFx2ia5c=;
	h=To:Subject:From:Message-Id:Date; b=H4AsntbIAhjNPLvK/+9m2ihP8LU7Lnm9b8a5wfun2qLh/A7OH6RdHG61Pe6lE8R79yBxNjcEaEAFsxqThFvktL3cwhgjx/MQG/f8DlNFp+FItDu8PiVh0Dxj2SK5x0OgWwNgFD45EkjLxVVQKopVitx7dlILYzI6dMuj8SLG8Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AceCfpb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AceCfpb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752539393;
	bh=TTSj3GUtAutsHEzA3uXmG1HxaXrZvfWccuESFx2ia5c=;
	h=To:Subject:From:Date:From;
	b=AceCfpb25Pd44ILpuaG26jRqMM1SDJiYaPIY2IHRE4BJPlz4pp4vsACbcZ5cEs4XS
	 bvtcYteKIHJbRW/bf/DJj8+Gs2kd7iON6hT+/GuaBZBvfoSAgmuzgkWeuaqWKpAd+p
	 A2a2bhQxTFlgetUJiuwUFEAJHKk3VD7wUoH2LQX2OGUu0nXZN1Jx8f2TNFBkbHHUJ9
	 UI2v9wBp20ZL4XxAq7uGRu+y8QxByOgO7YyuEzzKIva3I0QnSjxDVwXoZPEPt18IKR
	 8PwAtMrKIy5BATcb1b7ZSwsYl39RJj8QaVTiLU+XRvTK7mswfCgbCXq8mpZr++gwtS
	 TwoCUx1SWoUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D39C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253939357.21476.10565876696258065956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e391f288fed37512fe6599573927fbd265b5874661dd48843c99ec37ae25b7
Date: Tue, 15 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752539393
