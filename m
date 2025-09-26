Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BEF2264D3
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878994; cv=none; b=LyEbEekdiiI63BRC3uLZcTW1ZLFcs7Lx8o4IWpvEtecoGAJEDndgxv6BEYrdBb9ak5mZqBaFa+4py0V4LmPVLPXIrqzABHR1+S3jMy1C5YA5r+g2XxHtrLWuO8kWuSU9ptYQ9vGyUMnAcaTtF3RDoGp+94HOBnYRsUEO/btamLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878994; c=relaxed/simple;
	bh=MAzlaVE0WOH2uSewF10L/tiInGJZKg08dZ1P3sv7m9g=;
	h=To:Subject:From:Message-Id:Date; b=H0xp2RdytpjO4SBRUK9iVqZQMB4nl7ZCr4TN5zy0QpdHs/dNyi4hJ6LPffGmSMtK7xz0T0qR7zMKDAnl6DiATvJdw8A2Fz5J5RU1sUwv/1FFZbQS5Xfp7NwPKZgwOosSvlhQKJMPgrlUItly1GIo9uAaenSvIRVJncdko7s2yJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbyX+3Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbyX+3Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758878993;
	bh=MAzlaVE0WOH2uSewF10L/tiInGJZKg08dZ1P3sv7m9g=;
	h=To:Subject:From:Date:From;
	b=CbyX+3NvK/JQ0lJMsa+/Sc7uTvV8zLCkIhxV5nlYGQ+sTc6uqvXjLcV+oxZeG1KcR
	 FFQQ1CVbxbu+suLwvvbQMz6XLSNF5aTKah2gcaY0wV2KvLfnQvuE9fmdDRwnHlDueB
	 wErcZR07x7mcQ64urvke8adsOeOngkelHmfb9HN/z0J2+fkm3SUuPuzvz+7PCEf/0d
	 awAR0LvE2nrTDcQr/sel4RlWd+2K0Uuz30Fw0VTxUK6e5Sg1DAiiK8jJyrDq7j9SQU
	 oYUtG7pTLRHVbD2QJHv3W52ivsLgED9hs6DVsyAxKCAD+usbrnDJ5b5IR6TJAsu7uP
	 x8pRRqXIcZ35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887899358.27971.16358036055012758368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d69ef86dff19bd505f9044997cd7f0b290400f949054cf2765e53b3080f497
Date: Fri, 26 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758878993
