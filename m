Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365D302773
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768768434; cv=none; b=BJvF8SpAdwJ/bsTBkm1+WbT0QgHXeTSl6pXK3cRXgwG5qpFOIY8xcqhesQNFRm9QnNhAXnJB2fl+cFx4UcCe431CUzxgjoAJyh4DuwnmtT7IRBzZmKRoW1i1HSLBdIFoSmdgy0/oV3sQUw7NMHUexBQEMyd0/wLq4uF4VbBaJ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768768434; c=relaxed/simple;
	bh=T10ZE5HAadsBmUYEcYjQrNGqf1Drxk8lp6sP/dKxDxU=;
	h=To:Subject:From:Message-Id:Date; b=gxc30uiBJASWfqIOWW95EPcO3ilTbcNZ7TlbOTZUobahp98LwuPM4FNOSk49gyGX+dXGsbbldKHEFL6qoOgRhkNJnHdTuy0HsFoijGvfkY+Tspdc68dCqiNcE346QLDMThAt4ICnILi9AODZWkpQHpG7BmsB/1N3bCXUIJlo1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYC0+4aE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYC0+4aE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C8EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768768433;
	bh=T10ZE5HAadsBmUYEcYjQrNGqf1Drxk8lp6sP/dKxDxU=;
	h=To:Subject:From:Date:From;
	b=oYC0+4aEj2AaSeYFDdh/ept/qTmSO/0qpWzx/yD4TvRGHX+RXA3Lz2/xv8ae/n0vK
	 mzlWqnDgOgpWJb6x0WyyW3ljwXk5w9XP3xNTE+96lGA3k3X5hz1FRs8sT8oSqEN5Og
	 6K8mnzeYxnRbLJZCo5FMAxTLSbLcxNXFp+vkvF5OwU6SWSikJpV7Iug0gKwIBb/L8I
	 E2IfnWhxztXD7soZ/LUrXZJF3jtsslZj3mtQG1aIZ4qOaIdyGWqEj/5CmOoQ2/HwMp
	 oSbxdv8larndElMxI/7phEpfTfAvHQdfR5RYRF/kiAhMuYPtMffW9sl1yZicG0ivT+
	 t4YSXbTfao1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F32CC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876843360.25861.9361672603164452017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f2adea4036fd63df338575866ee912897f90a018b117c4cb14181c0ae6278f
Date: Sun, 18 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768768433
