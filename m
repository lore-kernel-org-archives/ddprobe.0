Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907338BF77
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773352494; cv=none; b=I/JUZIvWITWRxMOJOiCntBdv5mj5NBmIFnR0FGDlXlFMjLCA934EMZJsy7hmkhWAMoMghp7oTjPEEbXyXWJUkTox+JkocL2dVUnk0tHeV8ZXpPoD3hmjxH0fNZioNQvUXT6xENZhlaSerqHTva5IT7m9yTnqp5vEom0a7a3Hm/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773352494; c=relaxed/simple;
	bh=YnFPG0w5d3UYM7bLLcX6xaZCyc+7eRVjJuBBg4Dr44s=;
	h=To:Subject:From:Message-Id:Date; b=MJZvbIzxxwa+Xcd9bOON6t6yp20nbkRxcVHvI3d7/WL3ei06keHRwHqkKmSHiZpqcNWs62cffRdyed+MPdccdvTW5w4bp4ifyNrF6YffPQVQcrwRScZX0NKuI5oVOX1KlBFk+WSzvWKjTMo32f78eH2LbkTZ23UYEegI2c8VD0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hrpq1uqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hrpq1uqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AEDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773352493;
	bh=YnFPG0w5d3UYM7bLLcX6xaZCyc+7eRVjJuBBg4Dr44s=;
	h=To:Subject:From:Date:From;
	b=Hrpq1uqFURmikAu8kR/SidpqxvNsdDpCU9688Ucr4prP403N8Nk7QeBox9sKTRc3H
	 ZmybCyY9eN7FQgOnbcG0fBODe/VIJvttsEWi719H6rpwdb8J0HMlNONrlm3CKhx7H9
	 XMljPSFhjiBCIAt5xBvn/0hJJ0+PLMqnvENb9vZ3oltZ/ieAFXwokl61Gle+B+zE3h
	 HMF+rdI2A3W9wOCgITqxZtJ3QEYTtjNf5xic+UjLKDUE3dKRKkVoiLz56/JTJjwzto
	 yvNmI1Brri8L1KNwR1N0sV5oYZEHWsN44lcDfDyOn9lGE9/eAxyglRtM/pSgc/7EXk
	 lL3HoGuPIzYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118C106ACF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335249358.3907.13938466097204070058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256b04b253b645dacbbff8e2e1ff2e02205e3ac885199d3a56151f72ece40ff7
Date: Thu, 12 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773352493
