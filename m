Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579061FC8
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715970143; cv=none; b=m2DkLr9+kwfzM3cjlnqid6LTOrtNHOmXGn5To+Gp8WXmmTquZM1cFezo/bU6iWsitlLhG0YINazCJvL1RJBWtUlA6wqYig1Q0s0gfPhdEIEZ9NWtjDUhaemiGWb+BwNWjovzI0gNlyv8hS58Z+8dC3saJYSDvERBgffPudPLdr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715970143; c=relaxed/simple;
	bh=Xp0CRKjEaDdl0a2dY5gJYAzACPNFMdWmvsRmADbIxxw=;
	h=To:Subject:From:Message-Id:Date; b=tOROK9Wcd6Eqzit4kBrJh1TW0xGpjGAWbNHPlkVstD63tnr8akrT0vTlN6IXzw4kNaSchklLdrLC3yxxPhpZlEaVlnf13R6HjEtICD452du71lhUtv727gTqV4iXrK9v5NgIG2K/5YbJi/hOtJ4Rvel0yIjrm84mrBTSW21SB+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZu2f2AY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZu2f2AY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2903C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715970142;
	bh=Xp0CRKjEaDdl0a2dY5gJYAzACPNFMdWmvsRmADbIxxw=;
	h=To:Subject:From:Date:From;
	b=LZu2f2AYtlZtyneqIbeJ09URR5iYE1eRU53fL4SVIkwjaCeVzcVmPVhFWifxEKOYi
	 LcyJPwT/i3qfcaOoY8pvdN70HmSjcD90z8vKPGR9p6VqIZzAD2SF6FctH/4CRfm8Ff
	 kri11l0pLJ0a88Oe0xwe6gWwrSKwssPRFe+MXJaEi8SWXr/8Db2Ds2okF72Jmrb8aB
	 CrZZRCDte5/EFNvqV+roHNHSVLqe4U/+tb/twVjd8fJKARcZzFmGluTHVJqd0tPkwI
	 1IJR5EmC//vee7QgBaRV1+oaONEuP7sL4lYs8e2bePrXfST5tyujNB8Peiyc/5Vtlc
	 qE0e947YVxpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09CDC25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597014281.3479.17176380014132009481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d509140076765afcce49834097860e2f6f61937aa673184dce4a3e31cdd6356
Date: Fri, 17 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715970142
