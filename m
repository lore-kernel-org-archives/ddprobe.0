Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE062DCBED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747985994; cv=none; b=kWV0gtGBa0UW6uwVzBR2G9i8FBHKgHHhd22KAhd4tazg84j+iJmd8tq9X6a/tDxh44M1IrPHG59STG2YrAx7MKQThzLtm30MEyBs6EPa4igctcM64EsG1AknFal56+vzflGU+inA/oyTXAzPZ1dsKWsE0oYfXLg2XRy5TvvDQhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747985994; c=relaxed/simple;
	bh=L4rzN7Zu1rX7b0vQS+S2zl16+MibYNGYtR/3ep+gkHQ=;
	h=To:Subject:From:Message-Id:Date; b=P97EZtq9vl1ZaIApkoEA4HDM/BZVWVvLqTfDUxlTL488XPY7Tqx1z0UzDKouTXfGdJ8hi5/y25X5ejMnyMU2lLc2m8ygFvbltgiCJLYfUAYAz7TzkKrR+mXdGgPcnMY5cwQ58kKFadZBDZ7namS8yjX/Xci8JSjijc3dvQoVu6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCNxQBeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCNxQBeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747985993;
	bh=L4rzN7Zu1rX7b0vQS+S2zl16+MibYNGYtR/3ep+gkHQ=;
	h=To:Subject:From:Date:From;
	b=iCNxQBeBkMykrZVa4/Uh4oPgZbzNhc4YKcL+UG2t62WDUrZtRdbiF1aIAV092ePLX
	 6dWgZNx/YJsYddf5AK+2utahFzVwGepD503QPkXS/nj9dj/B0zlnSuerimSbDnSy8/
	 xOVOedsAsa5xJIy/nWXWyAE2UdXbpSl2+ZKi7qTFDc4ieeGcd7DP5dPZg0zDaiKEHX
	 M+ZTV/ezBlCix4ze2SaLvAdf6/5hqMiSKk/qfEQH96S0SFA7ebnnF8n96XbULqIgQO
	 wb/5igXjt/sEm7sXr7l2ZIbp3dhOzeIUyzxMgW0Zc/dcKDKv5Bdl2yZ6/O1IqV7CTm
	 aY+muhxDkTpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA02C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798599357.32037.9738935961186765364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4741fe05776086366069ef64fc16370339910fccdc7818bae9c0a52371cf2162
Date: Fri, 23 May 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747985993
