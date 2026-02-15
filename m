Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393A624A078
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771129494; cv=none; b=QQxOeOzi4QEqrcu09gu1ifkzR41o4B20DlpShf87oB1MdOFOdK5UGPtCkryyTE2abV6hB5w5Mx5SSlF61sevBirnyZV+VDDyLu4OtZcYZotWkpgVAaP0EahV+ChzFICQ8fE3eV898lxrTeHyGClgf4daxwL0uGL9y0fRE8EMGCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771129494; c=relaxed/simple;
	bh=nAYfjSYZnGh0J5xdVoAtR/a0b9zFhKaWK+Y0zdgLH1k=;
	h=To:Subject:From:Message-Id:Date; b=iy2w4BDj7Yf5bEeqzj/GhS3EYvjD767W7Um7BTVbUUaj/1p+YTs2B60/hLjxjVbDpWqUWwuLztDQI7oXU01dtntUvy/KO3IgPkfhGmC8qLtCnleTNIOrlfioRObIMbHGtBom68oi5oe9pZC0z4rri0CzwVOW7icka5opNK4yDyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H73ZMLZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H73ZMLZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8387C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771129493;
	bh=nAYfjSYZnGh0J5xdVoAtR/a0b9zFhKaWK+Y0zdgLH1k=;
	h=To:Subject:From:Date:From;
	b=H73ZMLZLLfalrUHwYmZUyJ3hsUagpatVcN+Uc1vSo96X0Yfp3cpzT8KTJGGabTwGS
	 +YEBAKD7q2jIeAPmT6VyRUazWQVkwZ8omOfT1x+S1mgsc5WILIC08hKW+BNBXlAiJb
	 Uz2oWVFNloVcYmjMzMreYm670y7hxxzGJETJIqHoXVUf31bEjQUc1JJCRs/3YGMWyr
	 8DwN80UF2tPwe3F392kPngKQwYkBNg4x7tUFFF12DcpcAOeZZGr9ItCUSZ5Y3IF7Jo
	 eFhVJoXKi8kegDQJiA724Gjs5DSPGmIs3ty9lLT6YMwgvBe2hYCkO+G/SWu8iVj+FK
	 /UnaZMRbhj1Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ADFEF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112949363.5616.9684457943708258490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a604996cb65623f25aa0a3586346e7a1da5411e2e268b7dbfb23de2b9f21fcc
Date: Sun, 15 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771129493
