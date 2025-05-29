Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4012220E6F9
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748533794; cv=none; b=D41CDPQHGYjWzXilJBBHwbdFwnU3naHE2dG1GiQdImgQDxTd0SbKnMzJNyFZQbGEn0N0Pasv2D+FS3w/ggeJqHe2dyCkr+RkE2/AorENo0oZhd5xbAegyi2BsYj5y0A1Ztnnrmmb0kl2kjdHo1B0HLlbhGwzlxBBLCr4phhWZsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748533794; c=relaxed/simple;
	bh=xx7K/K30M93mgHMoR8upJQAHVfVChcHYU5jJG9FP+a8=;
	h=To:Subject:From:Message-Id:Date; b=k+OaSnRFpWuc/qRu8H3mEIE/lu6ngxPOa8n9vOFADrxuZhRJXC6/Hu5NKXPdBhzgzpcIUQaqGRtuxFlHLyDcCod3IyTgULmIocAyelOEC40mR+m5xf8RcOzZZVyXNGOzBzJGj80JLmRXIHiucE7nw1ckLnGOdWNsn9vBqZR4mDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu1bdSNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu1bdSNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2883C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748533793;
	bh=xx7K/K30M93mgHMoR8upJQAHVfVChcHYU5jJG9FP+a8=;
	h=To:Subject:From:Date:From;
	b=Pu1bdSNTZRRRLsRPvbkfwHObf+doIGfhzPpTJgz9BHlKOwepfoP7TDBGdRLt8WsHi
	 GVTmuQtGnxCPjbZB5nimTVq8yu34LPOOvj+VdNKcxKEfYUHrBO2aNJG3GeOT9iB00L
	 JKpag2UAK0SuZKJF2M9EzjV2qC+nhOaWe1/hwU9NYsJrXlQSewgf4NmZVWFkcgUi+B
	 zobjwbT40YF23YGYoi1p5iSyfv8x4NzNLEyrRhTd08WihTlwTyU+AmUEbrYhJ/iw6d
	 dbtLC+E6SiZqA9Zv47Ega0AtvKqt3ajpNadKIAuTZmxDhEhZ4e048k4ckYmPaZhxtR
	 LzlwihfWp1XIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F690C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853379364.3092.18229376678854337243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c41237cb54f8bfcf20057a70275ef72701fe7170daa14d8ab3b833f3d975997
Date: Thu, 29 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748533793
