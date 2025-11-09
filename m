Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349EF4A33
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762670994; cv=none; b=RApiF1tpzJgE5CsxFiQl2+1bhi+nc8W5d39L0ro1D1ff3tQ2ZY9vIs/1swfV7sRxxtZ+GRilFT4ebSsnRT/s8M6j2/Ta+SQ++EZEqOKcsxfWVOqmCC7Qt+3R1bwEflH/dgdHTe2IjHUMNMUnw9v9cPHZh2bzU8ewkQrJqaK6/dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762670994; c=relaxed/simple;
	bh=4uHWHP+F/4EN4mXrh1Gj7FPlGAj2IM4T7ilXqNInvxQ=;
	h=To:Subject:From:Message-Id:Date; b=NcWcb4Mpq2KRUW9wtZAPO8qshzeTg9+n4UodpKcmoDN2bXWmSAX1+konuZ/C+J5e8f7UgYxX2W600Lz0wmnsqrNKta9A3VQNmglqy9vUcYlE3tJEUkiLWi0PaYmmUHv4majGDIE/9ccFPcz1A3721FOQFE9KVKjBd+OGdaX7EpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qnnzb/aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qnnzb/aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BBC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762670993;
	bh=4uHWHP+F/4EN4mXrh1Gj7FPlGAj2IM4T7ilXqNInvxQ=;
	h=To:Subject:From:Date:From;
	b=Qnnzb/aNCWQO3YzudBf4wowDrLloaEYKvZckFpg2zbz6lqcjZQaanmSoBTOl3YoHW
	 ZNTCaXOMLu+IZcNPEiUGqe155S2Eb0A9GFXakYjzpSXvfk4MKUNRdVruMXlQkFMXqs
	 twEpArUtzXW1gZ/lItb8U8lDESIP/X0nWs2B4q7BcMTdrK3dINEjCkdYg+VqDiOxDn
	 fJF9s5izEWTcoJAPoyVa6RJar1sXCTzl60T4UewWHcVdfqrKD5rf4Sxc19734dzbui
	 +JTxJAlTyuVMtv/8wE9mXNXzQ8dK7XlELA432msys1XVLpW2GrpPO4dHbwXtT7ah0T
	 +b1G5nzpI5YYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C67CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267099359.4956.5711626675357679975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be249c2de76799820f4fd9b96f3755eaa6abf0ecc6f9c5eca91cde0f147581de
Date: Sun, 09 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762670993
