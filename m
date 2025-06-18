Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C361E8342
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750286996; cv=none; b=dr6HLtg5kz8IKCa6gN2bmrOoEYmWzM6Qx4TtqKIRtR8/CSF7lmMEzpgI/CzTuJg62CPz5KzjDdtSm3QU0gFzXnOoHD/zmNr4Do6NJA03E0uOJAg+5QTXgNl2jWMJIoPtEh2n612ZDwGDw35BcBgyHSc/tBAkEfDx9vZMo7ujYDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750286996; c=relaxed/simple;
	bh=pC1Qq/sY9QwHjPx7t1UFccD5ja5sz56L7MGdhWBriGo=;
	h=To:Subject:From:Message-Id:Date; b=YEo/P4+KZC0hXjD+coF4+nIbunUu5njD6PXbWQ1zJR5m36ELA4Or1nbRKjY3QoOlgX3/5vnr5J4hzTvHE+7UJQWiG5Bg4T9vL8PDuM0uhjiMj3VN7Lo+OXqio+Z7usDT5jKhnZ65P+yyy1Jd09e0yIn53wX2f7RX5OkCyS8w46c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSmRr0lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSmRr0lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750286993;
	bh=pC1Qq/sY9QwHjPx7t1UFccD5ja5sz56L7MGdhWBriGo=;
	h=To:Subject:From:Date:From;
	b=aSmRr0lzxUSdSbYACdI3D5EQaXwNfMhxUf0BS89Q4ok9ymudlWqy/WW4Jxz6qsHa6
	 zr346q45ZwV8gSUkMhFR95hz4EUas/cD8mEr+skK88bFAn6vJ5KbALL9QdwttQ+a5M
	 b3BOk6/TPuLlDTKl7nEwGU/PBH/OHS12/j5mCnK3IswmSGs7wYhXQDtAc+ARR+Pldl
	 n9AA2tj7+I+rXLfYYKiWj97gFrRiGMW8G55vtKdePeNGjNHrWfUwjuvqKgBEHpNxKD
	 hRFoMisPZm6MSk8rfNew/U2k0BTucRyeE6cqh3UW43YYx007+OVzkEh5Xwrj1tZ2xC
	 ElWK5QbIJ4Kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90190C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028699358.8492.11478260729854326045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70fb1465b324aa442597bc369e2b56c5977e810805ca0bac664439ffe746892
Date: Wed, 18 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750286993
