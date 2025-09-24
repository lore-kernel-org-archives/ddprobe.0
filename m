Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D912C11E1
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757194; cv=none; b=SidSYzB42H9rFvvwvE+2MA+HIg6lvkY9TA78yNPKqu3ZYRz6H/W2ubyj7r7kYt3W2lpXB480ZdtiNZxlqaJiXSaVW+v9mptUwU099XTdhR+PUngJQtUMKl/mUzTRhgHUeHQH4lqUhmqc00yExg7LBUdNfxqhtKW+HnIR2FQIKLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757194; c=relaxed/simple;
	bh=oEGOYkQfCqssOkOEwmyD3vvFB+z/R8f0iHW2W+9IJxU=;
	h=To:Subject:From:Message-Id:Date; b=MBsRMAA7XWjYXa3CHom+s+mXyCoQIB3x0OLaz0JvBIClxDtqgFkH9WhN0PMqzP22a4LmCrjg+sSIFle0duwPVcngqMSSwrtzd4/HaozB6YuW0cl9Mbu/EwxOdX1A3PwcSc/Y5WT4no4YwSaAQ8iYarjp7ZKWqVW72KNPTbN+Cas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxJtyVd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxJtyVd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E78C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758757193;
	bh=oEGOYkQfCqssOkOEwmyD3vvFB+z/R8f0iHW2W+9IJxU=;
	h=To:Subject:From:Date:From;
	b=VxJtyVd+Zrn8+xtZ5ZUtOeILTdMx1VZ+MHFUL/JsfWaCDym7WiQNUwhVLcWOhkaSA
	 Ez0B8m0ndHrAa445kzxQ3b9k2jDUp8huWmJ2X5DxVjEXEfB58QJf2NJyXyYlAJCdvz
	 QCF4KP59L09fKdyJ13GObdwb+spOcoBZpKGakSSSowtunSPnJyvuoI8zxp827+vx5B
	 9+7oOllfjD5ml0oMjkL7xyvIKUcPcMXF1SJ5hEoCe1AIN93eTv9REv6OcWKPwxhsvS
	 ryypu9/zx9wlsLci8wTm53SqQG0pCbvwSPWmjKWlmoSfjqQGhco5WXcXDGJ5hwi2Us
	 gmTXAJiswmY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7ACAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875719358.19729.8720698216554925621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1decd2211c6f82498152665e9ace21f8770414163b2dc90befdca2337edcd720
Date: Wed, 24 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758757193
