Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657D0A955
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720218323; cv=none; b=FJrj52UPOfs1XZNJFV+lVOLN6KOYJRT3QHnblgGGYrkmiMWYY4NybRCtquiAmzLc7XJ6OPrKomIbyzPY2g6VdRMdv8nken2KRSURGN8h75BvCjXQK31I48zG7QRFamyrjC+vghUHkGnnBXPYZqXClyaIaF74UhQERpx/jjnVcNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720218323; c=relaxed/simple;
	bh=LXC8nmr02RnDRqePOsK0iX/Oi5fTweC2C+JOt7QQ2QA=;
	h=To:Subject:From:Message-Id:Date; b=byns/F37wliIXX8Wn2iyR0BzCLPVWtbkSmDaXWj1wMsOS5Cn3IXN1WLYTfjyyWeNctc15u7ji39qT6jWyQw6OvPWYi9ohPAVho3iiBF+6wYpDbVcth98au8xMZRQHgEEzA/SWFvP47g9pGSFWKzzRSTx2rNcBL2Kd4IahKz5mfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbKEoA1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbKEoA1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61B3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720218322;
	bh=LXC8nmr02RnDRqePOsK0iX/Oi5fTweC2C+JOt7QQ2QA=;
	h=To:Subject:From:Date:From;
	b=lbKEoA1Unt62PTvQeqjfav6LKTnblJvqIpZcYjEuG4fNUTpkY1jLVEaXGM35TaL0M
	 o7ycYEcSufj2/dTSMAq97QqKBl6K8HB8o2ahr3dvnxTdSuWY+ayI2GyLRcNzpI40hz
	 UX/SgA3Qh68MVfFdAPZer1hsPRlFskl1Wh+dcoNDaczUfJTcpJuNexUsGuGe0mwByY
	 qqb6YFt9ewwh94zWxn7l8tunsOFyVixPOxKn+yLOeKR6rUFDOE4NQyqnqDy9tvPKUR
	 5qgaQYm1f9JgxnxJBke+SJO40m3OH2/gB1VOdiTgo4egfCqRU6+FggF75WJbgakTg+
	 O/x5+Ld3lf8SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0FBC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021832280.7569.17029096939001020856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf3533c925ec5288822702912d7912e527c67867692d678d7650981a2e53da2
Date: Fri, 05 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720218322
