Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C78C22F384
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751500794; cv=none; b=jXf1lf+ABkY1yvQpfiG+LIRCcpTRLKNpi/6pGQhaCieLKTYWlx0TFx6zBEu/Mjy37wZ0h+ZJ+cc5gTFzWxYh+KB9zXoxlCXt3lPySBuf/oMt7gTyoyFmYRyXETq1ONUcAgRpuVh7FItVsfA9ETm96J3NK89LlF3HrLcaJZPmjKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751500794; c=relaxed/simple;
	bh=T+SZJwd4vlxk/wSWE5HjUNbr3H2eQtJuPVgOgjPO7lY=;
	h=To:Subject:From:Message-Id:Date; b=Z0E36GSGdraLvnOEFZBBLh+z/lIU8yHmPGYXfTKCd3ak2uGVCO3RAR9UisExYsXVxGVZck4qW7vi69OK08AkpP8GO0ArOPUOjuH3kxkAdwttSi+yoYZpGO26lpQ9lvxFKeqahUDogA/CWM1y+8xF+9kYumPeyHcGKaN+IwZkXG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqB+ZHwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqB+ZHwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751500793;
	bh=T+SZJwd4vlxk/wSWE5HjUNbr3H2eQtJuPVgOgjPO7lY=;
	h=To:Subject:From:Date:From;
	b=iqB+ZHwx/UEPD9xOqUNN3aZ368iPsECh0fcTVKrfn8a3+70nmHQeeuKAsnHfNLhAF
	 xdQZJ+A6N/RkRX+rKNUqVGm1TJVNwNh/+6BMPkTBTsGxB3sbJiLAzYcLRPPKCnKRpp
	 jPI3CGTiuWLVZHtcqUFI+QaQWCKoTvVpOJAkmLknjc5HKZUadk4Ba3Ix9/KCa0wfTC
	 4It3TwUw4myMGHLDQhfPoDrtUvKxwNEi+6ZHlXghGeZAkW3sxhECqlD4XLBTGC8YRA
	 KPHB5rEAoucx6jdoYB+La8DaB60Ac1kUy8hccmKYRLfxZMafhpskvr/INm9wsGJrhk
	 NssfDzmNyCaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F270C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150079357.7526.5854462098294283343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5033fa6388800b7d7dc7ca8c278e1e10c86f0c14a11b07af52ea47ce2e2cea65
Date: Wed, 02 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751500793
