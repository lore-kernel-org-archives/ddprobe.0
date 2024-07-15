Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CEB433B3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054663; cv=none; b=ozZzSNPofv8Ti42Eu9UI3YfmDMfmi/Ssy3kdh9DpK8ipDGb15CnD0d9ECC6ODg5WmAHJOgbQyEbBpX8zCt9XSgivlTctj9j00u7e7f8gHsq1V6xRCjdeJ7FIhMknSIaTfa9dao61d7YYZ7ZHJ32LqCLa6AiGlV0ZILACf09v9W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054663; c=relaxed/simple;
	bh=4nwqwfLJofT5CSnmW9kgEk17n+nJ0DQwYZSBAFiGoi8=;
	h=To:Subject:From:Message-Id:Date; b=tnI1PBg1bGnqaprIKffQYnBPg5Jnj+fRhCJrDrCZz/tJtP+JYOSwvWrdUwl5jgdG7fQou/CmJ/L22oLnhIjCgSlHpIUUtw4Io4oalU5/rL2s/f2wjhupWbbnUP80Yr+26lmpjeNOh8RAhMV4pjsRF/nrClcsyFhHHcH4CNpvD4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Szxa6BYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Szxa6BYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46D4C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721054662;
	bh=4nwqwfLJofT5CSnmW9kgEk17n+nJ0DQwYZSBAFiGoi8=;
	h=To:Subject:From:Date:From;
	b=Szxa6BYYrXWDMKrcqXcm8KRlyX9NBzw1RHZl2JyIhJYZMZ7p8rp15VXZlpFpVjjGw
	 kTvAWKxhxrQghqvNgs+V+OesvHPnIU1pcLZLhjquQu/kqV1XWyUb4cDBye/MT+fq4O
	 TgPBcf7DrAuiDID9tVSln0abXJZE0RYMyj5NVKCt5jaK9y1VDpSLsZNEks4ZKFMXaJ
	 hrnDLfF17XJY+19Gt84ibmLj1BfeRnGx8G4g9vy+oooIGiwFcWwnci/GCYz5dE7SVG
	 pMb99gNVvt5KBRsWt2FTNVhWcv+aR+bY2RkuoIzWNcgANokRf+9CZ1GwV/G4m7nz/P
	 UO+IDJ+mFLq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E61C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105466285.20015.9850592887342115596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d860e691067375059ed49b04d95a603edcd4511de274909f462c23c974c5346
Date: Mon, 15 Jul 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721054662
