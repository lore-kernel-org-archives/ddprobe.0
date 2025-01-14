Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31602234CE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736854554; cv=none; b=VTKQGE04reRi+a/AKpK3M12qXU8IHOCn/4K4fjIoenK8/aM3bXGb8fLoAHdsK+o8JfaJOzETpkT+i+kVzlYUu3hPB/zk8uNYQlqDDoCe4xu+kwiEUQI51Ky+jpaCLHTb2zs5uI2sU7sNJST1WMk5HeNwxo9j4UdSlv2yvK/ZCJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736854554; c=relaxed/simple;
	bh=dALSA552EEMGikyDL0MMclTXGZxwSYjuwTwhooko0fw=;
	h=To:Subject:From:Message-Id:Date; b=UKBmQwsDn3g8crKAN2ZrzFD4zoGxbGu8kA9exRyNYozYFr3xOO+JXPc4T9p1B7vD1FIJfAowg1AI88zeSf9D82xf4a3B94U3E2+dpjnbKoKejKmicm4ECMxAeugoP9InKVMP6lcOvYQY8kCX2epW8RPUwKhh7Mp9uJM3zVkfBs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=by4WoTv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="by4WoTv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736854553;
	bh=dALSA552EEMGikyDL0MMclTXGZxwSYjuwTwhooko0fw=;
	h=To:Subject:From:Date:From;
	b=by4WoTv6nQIM3WNZFPgyxu0AW6CF1szBKwx0FJngMS861Mixjo48bfiGK3t9ZSLd4
	 qFIDbkrTc1jg2FCqMAqGEOKeJX1ljhjJcFu5bdh3mMux/7RhtL2JgKB3uguS/jYwJD
	 s2Swnx5xHMvwdnT4zyfa0XmED82C185OUNIYrnA6w9/Xqn9ghMXsqE90RKlaGDmkTY
	 d88WWkts867BSnf6qCOQ2BWhfyPVzkp5Qc0rHZyA+fnsH/ESf4bnbXMaiTz5MJ4EjQ
	 ag1ijSPswMNbPGOJCLXyPZkPtJu3Hhq3Pf9XC3gnCLz/t+M2OxPmroEiBkJWGXdY3g
	 4EbUAzRLm/4Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F4E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685455359.29636.6774225388368442807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3684ddf479e4f2e1ae318d60f0354eea7d1d3da3ed91b166f0f715a93368758a
Date: Tue, 14 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736854553
