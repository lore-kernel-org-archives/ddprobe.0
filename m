Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89DEEC0
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783563514; cv=none; b=OFm7zRn/3sPyUKSw4GH94ZgNKafzNyVGiDl9up0lb3A8p4U636mN708u+28fhZtE6zzR+EQtz9Gxjg5ZvHGgrqk/ssaVwb05nD7JmLzrndQ7EY2IYDmUOHxWeELI2lUGgu0SIMGOucLfOI+PCQqVGLdAbD/3P1jilY9bCgZ6meg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783563514; c=relaxed/simple;
	bh=sJH5DK/769WVI2CdTOLqwjRhSgJhIL+IDG0ddRZNThY=;
	h=To:Subject:From:Message-Id:Date; b=BDCPuDii+G+oekzLkKhyf5UQ8TsN1O1zPs3I63PgTg+so5tnTAPHiLZ4Gj/uLLksLxkizgGC5QdL21up7iW538uniyJuW7HYTDy3PqO98ctrlxRkFZcF5+k9RoJE2/txrBHnqsbcA8Vn5Us9vgDojT2S1jF8WM3Qm2E2JyCI79Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBppy0dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBppy0dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA098C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783563513;
	bh=sJH5DK/769WVI2CdTOLqwjRhSgJhIL+IDG0ddRZNThY=;
	h=To:Subject:From:Date:From;
	b=GBppy0dSyaFOIxBqAFKdxhBYlU/K+snIWgpMtV89k+jpVghgHa3cKMv2b9n0RfeFA
	 77mLY96rWFJJ+LPsRmCMmzhYo01TKoGREDcvoAmU6UiQB0y4ZfTZ7ljstdNLZW8H6l
	 FiNUnjLqrLdVrrUBdpkds1VKDpIsCzjpq2GUSkaGlgEWPAZjzM+upC662icrAyAgp5
	 ANhrwdYkuaP+bNO27EO5u5YNdD505xRZturiZNMZk2SZlVcVzW+l1pgZzYvIreXXBO
	 RKLX1hPi1EAvl/Yz5jjtD9iJzX0U+XUEN3GlmXsLwHVexyF6/3BaM/o6CK+vK+FkfF
	 0JbnJfVcuJD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C31C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178356351368.12841.2600396629256551465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e44ff8bc27c845bdd93e78abbb090b2ff711877170331478216e19ec1235f3
Date: Thu, 09 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783563513
