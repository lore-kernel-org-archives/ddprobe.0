Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D976B1A0B0E
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734726953; cv=none; b=rOGnYTLunopMbqzDD6pxiux6v99WpjKNDQlvW0rsFMpw1YrJ9WhGaWRwfamMHZiUOgR6K7keY5sSxk7ARgvnKnJ2qadDHaYGg5Z3ld5JC9K7b1IkNpfRzO3KZjQoLdG7gxfd2LhoFHZB0uU18v2BGmlFY0gK5Qj81/xkR8Ti0BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734726953; c=relaxed/simple;
	bh=y5+GGm6Zyg9ZXs8vfnSfambD3vgBq4uRm0OcfHbtxds=;
	h=To:Subject:From:Message-Id:Date; b=kLqWpAs4yo4OI+nkLUqPXwnzgu0Uf8sMxQSfASrua5U4ox0FFp7O/pigAS/wwKL9x3xv33XiD3A+ItA4f1AxAp6vIhU1lSSedq3/Tmg0CGAHHI6gtr6btWqX1O5MOea9CJKaQ5t9ncVXnLzZyH6uk526TKF9ct0ck0aShRZM2EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8OAVr4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8OAVr4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC486C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734726953;
	bh=y5+GGm6Zyg9ZXs8vfnSfambD3vgBq4uRm0OcfHbtxds=;
	h=To:Subject:From:Date:From;
	b=B8OAVr4Fssfti2HSgl8ZGmBJxid/O4pI0kw6sBVK1HUP/MId1RRpgbMkZx+ZaZdnG
	 tyyfE+RkRke2J6h47fF4cWlNvKnS48+XWw1OdcZRlT/zIbibDj2ld9bwggMuXzmL+7
	 PXoLP2yOdDtmrT+gJXCmLNm4kLaykgsIMwb2F/ylOp7e9WY/2oYRhVkllOPmXRFiu+
	 Zln4yukwIcir/G4Arj/W6PG4TzJK2ofUO1RmIvmTWD72VpYUjgChzVZgqx7sfzgG+K
	 BorYQaWEZGPdxVzEnvKMqRB9Ei/HTsiBbPOzhGWe3ERHnXo/TadexjF1UrP9QBUtQ1
	 XA7wS1ZC+3gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F00E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472695358.7288.13500498204121616701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a986f57076918901b013b61fc7b1debbe608bf54ae3dd08b9b457e2d46b0b7
Date: Fri, 20 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734726953
