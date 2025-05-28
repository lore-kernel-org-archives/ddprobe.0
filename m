Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EB1311AC
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748408994; cv=none; b=EMFx1G55kXE0R1zBwNr8lP7eJueKnH5/TRCK7S3PVZrcCSp2pW8OgNmQVeFNdXl8PepSx5tcCxkGFHgDfw5+vss/uFECYYuWJGuz1petnOjyqAcz67UafsuDT58uDDMTxhTGk82Pm9IY66tQsOo8gwmbnCPPVjiRVyhXJx2ajqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748408994; c=relaxed/simple;
	bh=yX6q2sFmKD46/o2oxUBM7vSUtFOBibNmwUZ9OJd+8tg=;
	h=To:Subject:From:Message-Id:Date; b=sspntDxHiIEzeLoLYkVa7oRYdb3GX+MgohaNtMZbAxrzfTJEWVinNcvpZPpHRCAmLJhV4PDL5DKA1dksAamyBY+BqKuwMkA95tRbFVQC6fec0HRGhSxpI81w1XfvqB0/DDoigyeryPHfeto5SfcvL1kygcyyajGbEE2Csksx04U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDmJjZQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDmJjZQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5007C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748408993;
	bh=yX6q2sFmKD46/o2oxUBM7vSUtFOBibNmwUZ9OJd+8tg=;
	h=To:Subject:From:Date:From;
	b=nDmJjZQwkgtrwUqXsV/jIsy9zL4GEZshmL5OPjHyObOlN3Lof3qt43Wd6umt4kM9M
	 y3WAgeFsIlc7rP2+wl3Wyp7DpfkoxEek9WetTrLjbwDaKbLsxJMdzaBDaIVzVXOZqp
	 3DCRQLE1KGnCuqFzUsob9lCYLb+qF9c/oum9NxEA0GJDYoaL7WC3o5TFzkS08yd0Yv
	 1zZCfRwR6d1x4GGpCXN5BPH0mdJJcnjigZsH5LDxNVbC+yEjVmbzQ9uwZM2vLYPe2p
	 BFPMxQWQjSGp2MS2XeO2GkVJmd/gQ2rMMzuHpAJRHEli+TA6BEj5Lv1Vo2fFf2C9Ui
	 1ygqvabs5nrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234EC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840899359.20900.5278471656532586755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c6aaa05c8fb7823b6ae4a07f95c1263bcedd6a38642c96b2a5b98b32dd231f
Date: Wed, 28 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748408993
