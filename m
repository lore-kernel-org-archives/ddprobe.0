Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064655225
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiPioXTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0CBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705243696;
	bh=hBcB0oIx+qU/t8Rmcj9O01G7cdxVzGN2W7fQy0MD0lk=;
	h=To:Subject:From:Date:From;
	b=GiPioXTh1AcnXRP4bupcvrnT/5g58OOfraHxqxAnMFLDMprTSp4DN4AvdLS4ZHxfA
	 OJpLXYqjuLWa7AIPzTiNeD9++1CwDryxBfaEWnS1Sq4ji0tlmLSGZP5aKSO2ma9CN6
	 /9Z5oE+xsvoZfBYJbMw9FrCuYTaKdHanI/sULJrnCGN+sIakhsJUHjAVLMeDnXPVks
	 CAaFzkM/7SNwSedx7CBBT7xN/BS9aH/tFz/Tli49WBxyBDzv/GfDfK3iVEBYDC5Wlr
	 U0272F7JOlxQhFPStIAW+UDdTHcBFVs55Ai/gsDQ8AAuQchtOj9GMSfy6VXRRLTemQ
	 QOfa1Wunf/Ztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E37C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170524369638.9175.6928625653799904810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf06721dd15027b0a10821e2409e10f490999a838ead69c617caac09b01340ac
Date: Sun, 14 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705243696
