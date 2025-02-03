Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F0D1D618C
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738582554; cv=none; b=ZYGSHu3OoxTKGD6dui7LLn55hLrUN+hvi0Ix+2s8W9mbgkk5yuYqRyJsqxcBp5ytI/5qEJOhwzuVsXFDlDT6exqUhbsKLYtINCRvQjob9nZ71iHrRYBIIcV6sE4k3fwjD/S3vZSH8+wECZYJi1hDBYfiRH8EobtktzgXRRhIKFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738582554; c=relaxed/simple;
	bh=Z1AvgkohGu7oRpbYfCauS6+Uqf85T0EE4y5MljwS+u4=;
	h=To:Subject:From:Message-Id:Date; b=DbckrBWScxlC7HgdSoybWaScHpYI8lftUQZXJqjxN7RN+tZY9E91xD6FIeDkY1tKUHc6WsSyOPJcdPRpavfvqdyTQtXswha0T1hcns6gSUJOEMFIjNxOqet3M9RHLWlv8sf4OI/TvCUDToYo6O2JdQG6LNIY449NB6hgFlYk3Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/QOWqor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/QOWqor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCF4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738582553;
	bh=Z1AvgkohGu7oRpbYfCauS6+Uqf85T0EE4y5MljwS+u4=;
	h=To:Subject:From:Date:From;
	b=Q/QOWqorHuvCvZEfZNYLgg7jHMJ9WPQh31Dw9WM+oWIBzuxcNJXMHBuLFCftKVL2b
	 1HAa6dWHkfr6jjGxu37tqej21O61ImK+cfx/0D+7T2MZECK1/DpCb55gZ0frbJDU1e
	 puDyTdgQSrug/BJzWIOBbOx9EdjPcbK91KB9ziJyzOraXak7BYEFSLiTyAy4Dqowra
	 4M8e//CjHhscEYnC5QTBGhTJhv8bLIuWrlzk3m0gzblBJtokjnbgTVHV70/Iqm1ZJv
	 rCQQ+hS0E3Er75/vNSub07/YnljpwKWFO3X19Sehxhe8JrOrKnnB/kAS/z9v5XX/MV
	 TvVZCznVRG/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CDFC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173858255360.8461.6995867504471599320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b135120feccad7c9fa63071453e25880454fbd82a6e6809c11b5dff50ca07551
Date: Mon, 03 Feb 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738582553
