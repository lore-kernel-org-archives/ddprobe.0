Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8202B369965
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776569254; cv=none; b=GtlG+4NvtNRwsiW2PTJVZFeIzKieLiZ8fZRPBQnkBZF4wf3ToK/dki/vIyD5t2a8eVn/rmmiRcZutGvqOLwSJ/lk9IJ4j/AdpdC/G/qBWCJot+JA5WK1LtO57Vxu9oO1m5hhBP2D0BF0y/7szbnfkvezVF+5CkinFetSbkR4hGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776569254; c=relaxed/simple;
	bh=1JCOOk4N43/omAr2aEupIVBW7MIlKy9zj4YZEJelVN0=;
	h=To:Subject:From:Message-Id:Date; b=BEf9fMgU0wG1IIxNnPrRoQdzIBSZjG5NhjqjnlVOMX2Xwf0sQaf9GBo6bgT2yWTM9lXnbCofjpU9jX4zdZzF0c8FuIqdFm/SGH52knEdx78qHOExZCianRZ6tQlnWOQZKrKcs/EwqH+3IFWoM3NeXom+ZnjThUOYwEMGl5R/AO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNvpXs63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNvpXs63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F3DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776569253;
	bh=1JCOOk4N43/omAr2aEupIVBW7MIlKy9zj4YZEJelVN0=;
	h=To:Subject:From:Date:From;
	b=kNvpXs63yN56QiVZZk4MDn7gBErmR+c1fEVqqdZzIC/eoJFYe+S1Xo5Q7gkYuIAJJ
	 gOXYF+427Ybg8tJukhFzb9m90fQTor1d7HjrERBXMyaGEu7HTHFUf+nTVaVGgCi7R9
	 f8cHKLZHFMYjNem6bOXitHd4ju8Tj8w036rheHPKZ35Z8hRJeQKEkIuZDVezJgN4Ep
	 e5rnjjL79D6V9kS3p1Wc1haqvNfvMfQ8Nka9sJmI2ZgKQt3A1cdrac1dXm02SMpkrl
	 2GWBfyLd8EcXZ9JyDy3jq+tp1OjcFkXE52XkHEULthKhYbOspB2BZGo3oi2uYZc87r
	 Kc4+vMN1xdHjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF89CF99C86
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656925368.7389.1331877976905540230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ec301e917dc5e81bd700a5d318239abe7064d43a93df6a2da513764e12090a
Date: Sun, 19 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776569253
