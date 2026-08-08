Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2C31DDC38
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786220434; cv=none; b=JZ7MNb6D9PhTzDiB/6is/b44d29LahXwPpYowHPGXb3+K1eodaChXxkyleMbTTg9lPlInTI4IvxR94zxOPjoJ8pGSEDT1S0hXZp5vaTP/tcB5kSNWEfDSsMypCSejFQQS0DEAC6vT5uFwG6lD+977XlxpJeeg1g+P/2ZbUCNhJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786220434; c=relaxed/simple;
	bh=1Am9KNwVgV+UPAH77Iw5qU2D6CMBjP6yOlLpvGEoqqU=;
	h=To:Subject:From:Message-Id:Date; b=Yz4BjZscEPgQrMUPn1CkLhN134arzwONTNnBP4u9igSkpbqdOISUkr2PnJZc7oAjb1itY7l13+cfI+TzvSS+BfsSufvKDfAYlnCWnyqV/BnuvoNubdS+P5et6q2DNws6WViQcDeCkfGKc0TXRkpPl52vm+2YLkSZkRaXwRwbnPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4g9NP2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4g9NP2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAC0C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786220433;
	bh=1Am9KNwVgV+UPAH77Iw5qU2D6CMBjP6yOlLpvGEoqqU=;
	h=To:Subject:From:Date:From;
	b=B4g9NP2efWI3zni2CBhQiDgSfLiP+kmjguJaMD6mcv0gkZjiqxCCJI4ViR1YOX2OO
	 /kj8T3BeL86GJB28tAaTw8dbhVZ8PjWRenBzj99S5triNZKdgRxCmgr3OSUr5mBAZF
	 sK0FgoP0HJLa5B6v9hOqqdjoD4uYwUomG1ciQ+MSVqFsMc6RehBEty8C8Ii0jDTgYl
	 1uMbu36HbWLjMZ21ntgJk3AJ1QPTLx5z5UF/JY9/Intukphkh/Z7sD28II/GyHmu7m
	 v9pihNdBZllg9L2Sj6W0mJT+Y4dxMHMg4iwAc7xqU/OkClQ+WT6nJbbGFhf8QB3BHb
	 m5yYPiXqcKgGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABED0C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622043369.21691.10583923475227830859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49323f48f25d9fa35da8639e5c9dc383638d2755c5beb9145447b15517ff87b
Date: Sat, 08 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786220433
