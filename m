Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25920248F63
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751449794; cv=none; b=Bi8i7ToSX9r6MLXioW4wekHjJNFUPphB5tplVjvBg9RJyyC59s7lyiT4/2CLi/2YOPUSQ0MgObB2BKryRX+icSZzlI4x0luyVPQfkitTH0uu64sI8M3PhZ+efGy+7MgNZ08LcQBrq6PKV7kwURfiYZNkmUYUhmcoRBRPNb8SQ4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751449794; c=relaxed/simple;
	bh=X1hD26eoglvx6LKR1rgrF5YMRBBPrEz+rEe+OC0//xo=;
	h=To:Subject:From:Message-Id:Date; b=gbitDMy+mZ6+wYSbm4tNqSn8uc0vtQhJ9jltlIspwt/WoYWFPm0d5ng45UiaMuxt8ZfnBG/9fGWukiVfErXDy5S7YM6hudaRiuZ/axYWlze0xDl/V84h/aciYwlZNNXYM14O7Xjewj30cLxuqR2uIehbhyT10Kpq1K6Vj6YD8Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwRF0h+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwRF0h+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7856C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751449793;
	bh=X1hD26eoglvx6LKR1rgrF5YMRBBPrEz+rEe+OC0//xo=;
	h=To:Subject:From:Date:From;
	b=hwRF0h+g4oXc1OwR5Z0wHSoAwXIZ0qEqJRQEk4YirECVdmLNq5gtyCpxsmYJm/w5l
	 CXIIUh9lj6h7/gjPvO9rOkqPidHdjj2QEWgLrpz6Un0oZ7okbrmOj3rZW1iykOb1+e
	 vDxrEMVLHN30oTaMQSh2NtRM2FeZaMYB5xubZMd+7rX6BuPjxnwf6uvxLXhPmOZGL4
	 CV3bUTtZMtosiwkJmWm8dGCV3nBX6e7tQp19vr8nZQzWEfcJnNNsaKyrHDx5VTZGij
	 4CGo/yJYTZcVXZUHhq+EApPt8sHDB0hJ0h6A0xkhJ22O7LcpgGRn0LcV8ypCfNRePP
	 HtPt3ydvbx4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371BC83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144979359.13749.1545573202048389716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec8c50030880b5ac63911d593284d6363081450301ada41934778df5aa2a4c6
Date: Wed, 02 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751449793
