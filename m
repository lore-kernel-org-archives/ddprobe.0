Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5C31E51D
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755974994; cv=none; b=bcG+oEt+6U+b0v5RUYQQfgYeCqP1i0979loMMXf6hIbyBq/2P9xpm1fsrO/atksY3X67/xKot+FwUPoOUN1jFlemfmCKCrJKNvgsXOUvX4l6FjngcUEwUUpc7ZOutZFkoOkxejM896Rd6YAS9XiP5SQDOZMg8EOKq4JK8ekuzyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755974994; c=relaxed/simple;
	bh=ocAwK59kPV6EcsYp3SKty1IuFZMczqbqVBi5C5mcg+0=;
	h=To:Subject:From:Message-Id:Date; b=Q7diZrH/qPEqC6dYBLXy1U38T/R5simRvbEK/CKkQ/VopZWTCT+Qe635TnNrJ0jEtJ+7I+Qsc7/Wn3Q766BekPiTq2dc/behdditZZapyMwb616nC3ml8IckH6SUzF213ox54kYCLYS+bCQtYtChDTLTpAYV07M5C5ZTVqOJAvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHX1qRHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHX1qRHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755974993;
	bh=ocAwK59kPV6EcsYp3SKty1IuFZMczqbqVBi5C5mcg+0=;
	h=To:Subject:From:Date:From;
	b=LHX1qRHS/NskMlkhx3bWDpIhV9gsKSQHZnPb4fDZdNpvd2oCaxlieHakBwsdlYN9h
	 YR6LWTjItOqP6wMgJ2ONtNuQ0g6Nli7E5GwVn8jEoOTpJctcQPIw0/sRit6ZZ+hY0C
	 YSeqOPxseaX2sKSLeYkSBhREsbzT1zmnVa2tT7FZIOStWpNEXP/LyfUolZ7U/xb8YU
	 RQPcYzDZa5hiHj2f0vvSPzpsY7bNShVek1FdV8D3bK9mf9WKwsQbFjk+V7rTp+U/RH
	 /n37yLa8juRA+PGwv/f9XcEOTQ3hZ98F5sqdedzggLqAOxELT3E3nE0RwdmPQZZm+3
	 yBUrYlvuUpX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992A2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597499358.24645.1130148151541487293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f247f33bd69583e7c3ccfe033588c82b2522f5d4bb92dd0310427b6682fda1
Date: Sat, 23 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755974993
