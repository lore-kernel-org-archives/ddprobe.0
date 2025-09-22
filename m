Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B41A2C11
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758547794; cv=none; b=Na+TzDmGfyXALYjnJJSZWoZKW4pPfUsZus4E5XThCT4Kx1tKFhkpkiai3Rra5JK3p6Tj9CWLxrlX6FBTTMIayGJKtVaofQeo82Pwx73liO1O1CwH2ZPmz4guJlL6D/LbL/eheFc2M2GbZ9+8tPLm3p7x6w55l3/GyB5Ktnq3oZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758547794; c=relaxed/simple;
	bh=0EcX9Lr8mVSZLHNWo6C5n60aWAF+gO20NwKfQASmxzw=;
	h=To:Subject:From:Message-Id:Date; b=mj7/DVQlx1ZinjxM168Cm2WPGfFFKu3m1Q6zLSOrTBHD1VXnqxhl3+Ntw6fNY0rozarWfBZFRutY3ZIw/lsq0EUVdAq8Ih4DGaV1Bwd2mTyaQQCuydTPnCAd5PJJtyNAYJoVBhRnuEmLHopBnyHKhcrhUh+kT6JXinRcmRsrrAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1xM5J5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1xM5J5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758547793;
	bh=0EcX9Lr8mVSZLHNWo6C5n60aWAF+gO20NwKfQASmxzw=;
	h=To:Subject:From:Date:From;
	b=p1xM5J5AxTc3/B+6DiExAq8GSRoMO4zA4SaV00rQhpfSyRBUpi0w8EWDXIkx0Uu2U
	 nHVYSzEI1QFsKPOzBaXemeDJZrbIkPPKupfqJonmtgNRNEs42aoy08962imaFJZbdG
	 Xngys4/sNsfJoVtq+TbSsu5DVbebnZ5tUcW+t317stxgExN1rgBMvBRxqvhYvzpeb1
	 eVtdOksz67bl+z3R2c98FfItH+FTMn30DiUGYuKQMotKKaOkaZDPRFSmUS56iNuQex
	 /UwALtgCzRHUnTmdHfb3MFVQXaKp2qP0Ew7jHFxox/lYRf/y+x91lLQ6KomAgFLmJa
	 o2tBxdsyF3ktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E40CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854779358.1095.6536026470868538056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9085ff3ea43ae47ab9704079434b4cba30521757348a90de674dae4f1a8343bf
Date: Mon, 22 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758547793
