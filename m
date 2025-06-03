Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04BD19C55E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748992793; cv=none; b=PoN7qpAcSHEx7YucUkd1GC9koBFJmVwZf3f58vijmCyZ+2cFlyHOXMOHMGkuLjLpm0PkKWFoTdzMZuUhcN3ybQvqS0hJaqoEfcTniPEZN1fcC5yPhtRSZ/mv+uSdF7yOo5b5rpVU4bGsio4bDaADHSh7Lgu0+iqJg2JxWNEymK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748992793; c=relaxed/simple;
	bh=jv346rocB/mSW5dvTWdnb74WwxbPPCyuzdT+GpU9FsQ=;
	h=To:Subject:From:Message-Id:Date; b=DhoDHpU4iZbmAHcuXR55CCw2wQXNtDPwecmyAhQ3t27E4793IWUJ9aqZkPkl881oMjTMNZb6Ekywmn5l+Ll8R44YA82WXFL0N6jAnODrvct/jsi0APbTvoK1JpsCl/FgaUDcLAm/Pf4BuxTLvsvyGhZZEnwq6wHpwd82f9ZATTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2F7t0v3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2F7t0v3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748992793;
	bh=jv346rocB/mSW5dvTWdnb74WwxbPPCyuzdT+GpU9FsQ=;
	h=To:Subject:From:Date:From;
	b=Z2F7t0v36qwn27lF2tF5Oej+gAXoRr7HJyJ0hE5gmMmRywZZSy44WREslmk2fEAel
	 hH6y45Xu9awUMRJ3G0A7pcp8FAPrDJivTO4ZY7k7w59bmOgVxV6DBiQxzXwML3r2I6
	 85EWsHGS4sJ6G8oUiuap74Whd189ywYn4GJEe+rk1KzCB8Q7zSLo2s2SKTJJZZeUE0
	 eHkKWYUQwOIZZF2MsKuGf+ubiysVhVUIJJoa/ujmG9LNsiR2Oj58PH+Yy19/TOfpCH
	 SOe0n1gsDsWzysCnVlXZpiXiMjS8YTjJIBdweRpg3YBpb9aozRbcHmDCj0R/95Tz7V
	 WDAvIUZP9LwyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899279358.6629.9590753278178635336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5df91e4d8afb3f1445158e251fb55f083cf7b814d3004e3726410371d849b4
Date: Tue, 03 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748992793
