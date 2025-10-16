Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74742F6588
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760597993; cv=none; b=OOIrwl0lyFBnBKk04/ZAVFvEqd1sz2HlQ8Go5CwCz5tpdBf4hIq8mHVDdZ1Wh2A4/ywL5Ncu24pbftBvnh9/gXkB+PHp7KJgJ2IK0Gp5qfUPAYaiq+lQ89WZ95swWzIWAka3MuVynm03GCGpCNE8n031tpYyQGhX6P5H71Onv/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760597993; c=relaxed/simple;
	bh=ujuoI6hhUB5pVGGdNHyzbirjXa+jZ3Wg5oQgiGWsojU=;
	h=To:Subject:From:Message-Id:Date; b=ptrdZyZWjh2+iy3jP9aZU9IlaLWSQuDYJ0UnZpJg1Ou6eciVR/XPWHMjqvMdPNDqIJ+ywxa/fO+mh/IsD4c6R2Dr4HqzevaVBSWVbUQGjl0hY5RaQu9tyfPercifWQy/yFBSMLHpBxV63gQbXU3bAJu8SSEHG0maXiOf2Unk/y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ/4gsqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ/4gsqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF9AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760597993;
	bh=ujuoI6hhUB5pVGGdNHyzbirjXa+jZ3Wg5oQgiGWsojU=;
	h=To:Subject:From:Date:From;
	b=tQ/4gsqPw3j/MTJoKR0vDxG1lmCwHXbCz5RmR+oln1xY72/sYyV6zFJd7o1z+mdQw
	 cgKDYFGyQbuP1cD+CfEWVJALDEd4KrDSJskseAnlf8C4F/FN+saftizr4Ej0Iz5ggU
	 eMoG8iYwecWG7Q4DLS0KIcj9c2JSAhN/kFK1nXK4janzBOhKfpoTNr+Wvvcc1/NyED
	 WYkDyEyHy8NOVUXx3MnPK2nIgkterMGbGVuDCvd1eDdpVHBT1oXS+ALgsGXfJdJaev
	 tygAnBmjiQiOdgHlEaHukP1rGac2PTmKq4yrKrpnN0fKfSNYN4IzSuE5Xu2xaHi1R9
	 P0QMAOHcnwpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77ECCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059799357.2760.8347599534604691552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62d79035478a8011ceeb48a4aa567bc3a12802511ad46b660ba1fbe110938af
Date: Thu, 16 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760597993
