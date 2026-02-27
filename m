Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32B43900B
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772207694; cv=none; b=giOmJ0Yb5UmuLEVOVe3uROpwOFsB5OKn9+d6L1IVE+QsRf9hMTxXPWzNCfwyCv9Jv+HlDTnCbNvJ/Xfo8tZDRoLqnF5LylIjB+gZkidwhE+9d+HZYbIcLBUyTSvqdQdd5340A5cFp+Px/RenDB8pg8o5A279Vpx6PG9e1ODVXi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772207694; c=relaxed/simple;
	bh=z2pS7FYYoBBnqLwOIihA+wDkpyRRZkmwBhYNQWvih6s=;
	h=To:Subject:From:Message-Id:Date; b=nfchrcUJm5AXrPoyvhLMOla8RM1/gVb7JJAoXeo/T28A4+pY3+OxCGsKJ+djWfzzGAhm2KD66Wi/0dZ46GM1JvxSQp6oRZU0G1ZW/lenjgQskzpsRarHl2321pYBZSjTZ1NXnJFGQ7/zVwfDrM+CNe67W16s9R1JSIVAU/imJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQtfa5MU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQtfa5MU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772207693;
	bh=z2pS7FYYoBBnqLwOIihA+wDkpyRRZkmwBhYNQWvih6s=;
	h=To:Subject:From:Date:From;
	b=RQtfa5MUv3up9shMyi+XvEXMxEvzF2vJ1WslYLNpg2+drT9gDMINtdGYqrs3wpFdq
	 8di5t8kDoIykGCRQPoMlHiYJjYwirFjuwUOA4u5zu4dgIt/0FBMQQnVGp5H/EuR0oZ
	 v5EI+SDHZj+hTX33lW+UQAtBfTDVX/mkiLcmaFTOqm6IrAF1Nnr+c5wEUlJ30LRFzq
	 ZmcUJYbpIQ0caqES4RWoqZNEQmH1f6OeCh3nHLVojSWN+Y/cdAXa5zE5rLempRdeau
	 cWDFpfwoLjb56q7k8Y1ce7nd2AMVvd7xXXFPupauKVbNveAeGpVPN90kaVnYbhC7e9
	 E+xq8Eu6QfYVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92411FEFB44
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220769358.24986.12789952465411916454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a867d099bcd52ed53f077528c667d15f1be79ad2822f4ea19fe43505bc522a
Date: Fri, 27 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772207693
