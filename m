Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432E1405C2
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtMZCI/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F82C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699970296;
	bh=tzJca35j4sy45nNnyyDlj62ywpRUYtZoqr3IaJwYuc8=;
	h=To:Subject:From:Date:From;
	b=OtMZCI/AabjWN9qu/albOrvZbZSRamYG8H2Pz9bJhIn/p1egHHpveOaRMF188HfZ1
	 wMvdCxYKZDnXzEdwrvkT7C5QNJoY6KkQuzCOgTddTa0GjZWg6hmdU1sK4KjQtZ23aJ
	 IJQOchSEX2ppjWPlDfG5i87RIPpMZFgNwOeviuzpHK+ZbsVgiYU53pgT4tfeUiFPmz
	 KJaLVz3Z3YfAq0SBYTlYhN9pekLSO3/sjcLRSXiBuJ7CWuW5M2reHbV2GXu9PVVdVv
	 WtVgmZIsjrsI5fzZ8kMao1c9eDc8yje97x0eoCpVXefB+mDxQ1+5I8FOu4fm9DMwGx
	 tPlNQyli9rG4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6867CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997029641.4857.243560181528565081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa32887a71488a33597275dee02c8a318c383ba445c18022cd718d5635a59e72
Date: Tue, 14 Nov 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699970296
