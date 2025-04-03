Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B55F1DED76
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743706794; cv=none; b=SpHhCbOXeIrN2hYcCSZuG2kdNv0yR8Nl94s13/q9k1I8+8ocjl8BVOrMEOeQkZK1cUO4mb2gW8L8KaqcAjPKol+dVED8zY8qVkSRso3DgC+npCwvSHvU4ayXUZV3/mWf8FMv+WXawMWNPRar70GJsbjEBTQl/J3hkbK1qm9GbFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743706794; c=relaxed/simple;
	bh=j6s+I7SN/0PpkaTPl+haFhBqQ+oVotFh4BYTlqGb6GM=;
	h=To:Subject:From:Message-Id:Date; b=VWG9msk9zKIzcjDmVKKtBsYoDj6K6MvX4b1OEHXX8D2MsE3dGZSGe5+vkdl/N1anU91Jh4Hsrh6vduhwyrYvMcJbK90/3SMNw+iiMjueGeXlUpAeIuQ+fmYz8mKf1lxVBMMxVM9wMD5ySn7XKhTjE6iTdhhwSNxYBgY006lZ1yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIW/zRMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIW/zRMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B6C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743706793;
	bh=j6s+I7SN/0PpkaTPl+haFhBqQ+oVotFh4BYTlqGb6GM=;
	h=To:Subject:From:Date:From;
	b=PIW/zRMPqtZ7pu5B4i+ofgcB0x2gEIp0vaDKGO2ZRZHzJBnK6mkzJX9RDz/Sbr0Bv
	 wx+B5S2Y6mHVStzjrwDFx8Jqhw+lzO/AjpeXOMb5xACSWbnrMM0zPWCQnVQSVGHPH0
	 HquJO7sUhf9c0ike+Oy65bXLs2ZtXUitih4E4fEu4Z/f67sJxJ0JyJJvHsBukdg1NY
	 TNDBoaamQJCZdJgUzclQIIN0EdLsC37PFdVPQ20gcEhSk5oXM6UZnv0ajRKCk0bPQ0
	 26/QbvYBuncLUFEK5PMieFOk1hLemlEwrcs2VI+C3Y7Zw+h5PemMosVprfeAt/AKEm
	 L8qjeld3qJIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553EC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370679360.19861.6433133399285268855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d7212d41801a0834af90409de252aacbf412edf8a14a174818918393b1ffdd5
Date: Thu, 03 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743706793
