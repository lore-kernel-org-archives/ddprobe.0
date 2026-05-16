Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB732772D
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778902834; cv=none; b=JjhmaG1NfbJFJI9ek/QMlyUrBs4zZ8fTGAcLgOpj8eypEWKTUGSfzuXAYpESzBtZxWf5LR3moaazmtutmc+393A/999FIU+BQuydDRpMs+WvZ4eQwCrmZfKKLIQGAdSlHmSk4Ncg1ZYjWF2Q8IByBmzwpxeAnkDPhoTIaT3ekos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778902834; c=relaxed/simple;
	bh=DecP7lKQZhQoky9W/AJ4b1WmOSpaZ2eKlCLvfwM9Q0g=;
	h=To:Subject:From:Message-Id:Date; b=K/Gp4NCUS8bTr/ny9g7YOOoEpjkMw+OyJvq9Y3pWdp61Qmbk5GZwiiPwE8qGwh6Cur+PJNvIdDYwfUqqY4bsdQC8ZL40de2iKAsrZVBTWuahnLzjhmQb2io8zAETizW6kP1mHaVPVP1wgF3Ak9yalEXxFyTNxrAYD8gXu63lsck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHY0dFkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHY0dFkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7904C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778902833;
	bh=DecP7lKQZhQoky9W/AJ4b1WmOSpaZ2eKlCLvfwM9Q0g=;
	h=To:Subject:From:Date:From;
	b=AHY0dFkFVhgVYDyLFLhhhxXMd5NP6CBjm2y7UPmVX5zK0SV5QaWXyDBVvrJhwIr/l
	 ++ckuVapaAh2B+ZNpprhKXwDiMZg4r9tUzZk6L1qKglgBsSm+dXMr1rtScOAYiiRdj
	 EnhY4846NFHyVACU2bqIOOSFS5MCB0aa34nusoP/O+gf/K0CkZ6/qqzybKbkqoVajx
	 VJhhEI0s/DLMJc5ITkFGPx4lXh1W4tWFPvA/d2QioYE1Swc9elJYMTtYmMR947BBdy
	 c7VU0Bgeh/SVju43+MKUQJ49uU17Dv+ZwG0aaXjiT64Jtf1Mm5bofSq418pMovOWRH
	 GdNv0Rj46YMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BCCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890283369.10441.2610659446936648694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ed6514ecf3fdcfb683c9a7949381b1e7df01117edc0fe652a3aa92711ae8f7
Date: Sat, 16 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778902833
