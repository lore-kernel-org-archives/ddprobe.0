Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3D149659
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748926794; cv=none; b=c1ETKeB01+kBSXruTUHZgGe8Nz6uGZ8eqAWZa0JkKfINaJ//he8kdvZSVoGHxa0BHDknS7PV1PEpSjIYY+eTBPt/a8lwtEn8vNbi6UmevIxnvLDJ0SzBv8xNP83g6GNnyqAqRo2ph6JOv7NxKfpsNM+dJ2jrYm7HP1Rkcw5oT14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748926794; c=relaxed/simple;
	bh=z8H2XUXPrdPGNzm7oppc/SNObdGQSYbdr3GpXahhgOs=;
	h=To:Subject:From:Message-Id:Date; b=oPpHIHVpxqIsmrAf2QOcXQAsa1Q2A0hkcuK18eBOmiGH+DGPG3YBdVhywZwqUwUSCNmb0mKTujm8FdIAwkv+ufTkMov/OWL4BPX8JQkfVIcMBlUSo61Qmw5QR2JuoR0+FTJvB0HvaY8enLr0pBjXg+746XZa03PBIo+ZSQvG4CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqnYMJRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqnYMJRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748926793;
	bh=z8H2XUXPrdPGNzm7oppc/SNObdGQSYbdr3GpXahhgOs=;
	h=To:Subject:From:Date:From;
	b=TqnYMJRiQACMm5BhQXWxOW1o1KOUyfPKRr4yyJ0T2HXpNilKmEHkImPX2pVl4hzxG
	 IR8HG4HLXtZ7OFmia3nCv/dniuXdl41nQt2tvILelDSpz5BD7eErzFSW8YI8vHz66/
	 TuX+bZ4MV3b7wcncA5xqRvHoU1RX/sPViUSUQGET+j3mBWDxN5Pwm85RlFgj4+YuIA
	 aLjaXUloX/LANb+ujEA+Xp1QyczPtFotPrZzTHZESe/7+SbDRPJPgulN8FE8sqAzah
	 wqg8Lfkb58YypkVKQ9m2X+frCkTevgyUkp4AiBENFdTMMeVwu4NG5cUwyE492K4Iqd
	 151FivLV4QlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EAC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892679359.8323.16261289967662168833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec95c3191e0263fc9ca9c3f6aea2256ae6ae0964d056142bb3635df28e55a280
Date: Tue, 03 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748926793
