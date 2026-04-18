Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0B21C695
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776498454; cv=none; b=OQz7Yq3c/iAQpHlgJwu5t0NWkVlBlqH7gULnYqy5yoZgBWoGRl8ugZe9rKWAEW+RaRE3S7qnYE/NR0/kJEnyQceC6hRvqzNznE6n6jnE8KeUblg1WcNb0SvUj1D4zbRB8Hh7d1hrFOmtuowa9ryu/MWUsGSc0IPqSuuKCmTiQQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776498454; c=relaxed/simple;
	bh=JDgULsi0uwBw7UCfG6HCI9IRzru5Dw8aIZRCU9XFp7o=;
	h=To:Subject:From:Message-Id:Date; b=WteEzeu/oXgu4uaEJcTR33FqU8EOyobD95KIVC87PYtwjHdzUKrKha0DEjI4M/n5rAa6UicfXIOiU5DF2kbKYsrUsZEfAgANG7SfZ1c9HvR8yiwsEQNn7rKPGIpc+bKsEG/XKhWks/siHCOR+etNePyODq1SyB0xkhOAwM6jKYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By2jbEWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By2jbEWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA7C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776498453;
	bh=JDgULsi0uwBw7UCfG6HCI9IRzru5Dw8aIZRCU9XFp7o=;
	h=To:Subject:From:Date:From;
	b=By2jbEWAeySN/O8Stx+kiOfYdRFoW0b7vxqplGjN/nPYW+SZ1CAD3T6maNBIR+CuT
	 I/nOVuUwbKk72ap66VZgrN9cdrwf1q/zbOapB5wUIZ97K6VgoeGvded4FVkmLpSAr7
	 qqbl6/jf5ATXvfXt1c4yhHx6ZOX/RHYiTH78h/pb8Kj+siraFTAGtyTekd7LpZd8t2
	 FwAd8ks1F7kBGJc4v2XUoGL3Szs7yUGGsg9RM5Np9/4VMalhZK/jdafB6TDDMcmeOz
	 bcVXpoMn8OHhW71zEvy5fgw93jt3aMp5YyPqmQcMExs/G38e+KbqJaOSwYckAZvSoi
	 gaNNN4G+ir7lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB27F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649845368.9763.15401034078240696805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670069bbd194e933e5a1a43316dad3975ffd15a249a90ff57198cba2ab3fdc24
Date: Sat, 18 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776498453
