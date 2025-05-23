Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E20101FF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748040594; cv=none; b=F5npX7zWmj0MjThpREBXzMFrA3B4KiQiDBItxzOyKTS3IibNjbfiRUbLkVjHBtTgbL0Bu25Rvy7vdi0Nq/tNjl+8CHIaBE6wdSFIvMa7YyG9s6mp5mptRnxxvkbbj4wn5K4CkoYnRii3Ok8II3937kajVAXHYcmGMUtdIeGMiLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748040594; c=relaxed/simple;
	bh=0yvGCrNMcfbgj/8PPS+ZZgtItOPnyVNcOgBH6SVzaeQ=;
	h=To:Subject:From:Message-Id:Date; b=fitLb9hgT1qwCW/G7UX1UldJDpDcUil3sn0VBW0NzIoPSSj4cfXsDSnQrQS4+7OI8sMRzJcE6oi3lJKY2wdLFUlCD4Oq/mLU6WLq7ui/G7dcSu2jRKNw9hR0pEX/ced9JTbNAhosTyaYgXt4eSaMuNctzVKqLMIhE9mup9C19io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iup8+1HO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iup8+1HO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33DBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748040593;
	bh=0yvGCrNMcfbgj/8PPS+ZZgtItOPnyVNcOgBH6SVzaeQ=;
	h=To:Subject:From:Date:From;
	b=Iup8+1HO1ZqG4nrbR0/s9JSNhw2csKlNgQ/jyDgzQUc/SDipbkCWpx2gGJ/DqBfhH
	 3IgRJHQa4rKKvczIVX3vEJQ1kB63C3VXspuFajAfhP1FIh6vf+LkhtW5/EPneTOscG
	 h31d92Y4/9AnmPqtYJ4/3/zHFVRuglbpRYTD9r5VYduTHSFLYRh9PG/r0Gy9JolfK0
	 1W7bOy8uxNhOCROtvqLGG6UO84z66EjLi3WSLMOGJ9QEujaDAo9yEkdPzUsaTEwnjH
	 gDlIGyPWgQn1xWUEcmLZrmCc+1pANr87hY7hni4cYfQ4luHlfxfmy1d0GBHJODyeiy
	 5k4La63U90Miw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A9C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804059358.15154.12213236695107151860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75dca6713a087a61fe31f1bd6e4ea85f6f9a5e360841737c70c332ffb15158d
Date: Fri, 23 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748040593
