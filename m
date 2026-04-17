Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE6238D54
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776409654; cv=none; b=J2otg7HWQzEher+vdb8yAOiC9PoxP9hG5JjJUeuszqSIk43n4hHSbkzVuTN2IkwbIGZ/VZz/2DUVSyHYYAChsYjK3iUgd90Lu5EphtCROc1PBklA6/IeJy1BLtqsDU/6qOaERrSmNby3jMxFSabRFN4ZAFc+yOsSHSSB6NkbWpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776409654; c=relaxed/simple;
	bh=2ZeaTRj7maiazW4kKuEsOdwEJIVBkltRwDZpMANa06g=;
	h=To:Subject:From:Message-Id:Date; b=pmRT9oo4aNqCsKG+oYgpGT7nvkHR1eqLc0wHI5Xm/pnh5CMz3ICd/y8+3gjk7WFlcblGpvf9IDMnSU5ce/485y9PeSHRUrAf4nEY0LwIU1vqk/kTB6/p9TItSFmf1mtzPqo9ZoWM58FCO8VMuCgp9rKIh/txAGlBB6ICoGJ2LxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQIKmcUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQIKmcUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B822BC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776409653;
	bh=2ZeaTRj7maiazW4kKuEsOdwEJIVBkltRwDZpMANa06g=;
	h=To:Subject:From:Date:From;
	b=YQIKmcUUgnfUeRTYkr+RmKHplk6krmU2ey9kR9PsrEQT+6hi2m56q7lgY3iGmni1m
	 gov9iTqEUHPa25Dsk5LE3D6XLNZ7l8sliiVW/bx20rJDrg34u8uwPfVzsFaR6kbz2y
	 obn75dXG0zcUzBzfpOPEv4Ob3bJmhCovAFrUUmHXSFBP/IfIqgjriLETjnkN3LGZMa
	 JbPK1Gt4CDEb6HelDY4yppZeeFrhN/gkUaNLXwjNid/6/3lt+ZthiQJGWZGM1SoCop
	 PRJ8gxkN1u6paRiao0U8xQd0laQJfW7+073L+PBq9qUiu7YJyOU/lVlL4dd0Yx+qOa
	 adha1/QXoJUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FDBF8E4B4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640965368.2813.5424229164703308695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06106176a306b35993836e60b4142e7000da2c592cea9b3f7b61135a92767f2a
Date: Fri, 17 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776409653
