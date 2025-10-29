Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460EB2E3AF2
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761732594; cv=none; b=pIbpLHsWatxzuFpgZNAQPeJBgBfUWRaDj9PTlh2zQyAjNEG496uEEEAtWUwEaC5GAec0bgg/DE4yINavYZOfyRs6PJJewCd2uwOfoOOMKrkbwZXTp3bL5XsU9Z7uisp9MgmABTMbR42o5aqKfv8laEruQsuqY3yfHDoVLNC9GY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761732594; c=relaxed/simple;
	bh=hYuXmLhBoIJnQar7oiw+by56tskjw1Hk4PAXtBwhP4w=;
	h=To:Subject:From:Message-Id:Date; b=sOsbsNL7TCiu/dfftHuhyuDXGLbnXocsif4abozYxDVB8LDw/AKcWgoPJdL+bgmf3iEZ9dxWxK8aQOx+0xtS6hoHkNWXIH5qH8Vx0og2/YpkZzbw+ujs/hXrhkHe15r04xAczXaOriEFnnbLWdKhenZg0MNoOdmBu0r5VfgOz+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2ewWn1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2ewWn1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761732593;
	bh=hYuXmLhBoIJnQar7oiw+by56tskjw1Hk4PAXtBwhP4w=;
	h=To:Subject:From:Date:From;
	b=L2ewWn1KX6bVHXtIQdpDfOiGJ18eRsyPPogApzfLTE7gTCTjKW3tMvF/c7vIkbCxU
	 BbuMmqqXGUfCtDU/au4cp/eUU2BdHNNbzmIJRdTcZOXyunbZ7oRRr86k7VRH3ZBGuz
	 i5Qe6/y5qyXVwVP3OP0SbHUeQRPMS0Rv48LCAOhq1avgNM5bAwhWniW3Fl0JXAv0rf
	 oBxn3UWfOlWVDLKZPhNsPfXAyLcrZS9Wuq2WMqOvKbwcGRCThobJARqLJDS4G3KfxQ
	 gJj8DoI2OVSF3/Bhclw/eqopP/hy83xeQEVsDPIRLSx8TcBHwGgLmagTT0I7ZF4OQq
	 pPbGAuHXUur/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ECCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173259358.21976.2229862158717118797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5daddf59377b998313bfe3b958fd9fedf6311b1cea2f19eef637a61f874b2680
Date: Wed, 29 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761732593
