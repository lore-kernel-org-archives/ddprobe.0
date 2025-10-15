Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE0A18FDBD
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760535594; cv=none; b=sSKEwQmb7Jr2kgl5374buxI2ICVDVTWZjBq8sF8ZJ7DrPfVXhoQtXOcDnYIY+kT80gtxacjEq3Q3qe4NrxwdCUYMZfkZk1Dm+Z/S+h/c6S+EvDdPIeKgKiggVmgc/9AcDy0JvuZN9dEf5gI69x60DuVlQEHwteAOWtX5JSRsQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760535594; c=relaxed/simple;
	bh=ybOoXMrH7sqJFRH6pT6UKJWiMCUIlaTXBlRU+y6krMc=;
	h=To:Subject:From:Message-Id:Date; b=TIAyQzt5ZvnlXbAfdCpJGwm6JQlRr59h4hMpWyys8T8FKoIHSaX2gIRk8u4CBEqToRDkn73QYnXRKgS+DV5UEMf12TKgtJ6yGVuTspRJENFsY3DBXadB9F6V8suRrKOYssQx7W+UaXJpaFoWHzpgv5P7XzMV02kcg9Prt8EYD5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHF0CDy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHF0CDy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17ABC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760535593;
	bh=ybOoXMrH7sqJFRH6pT6UKJWiMCUIlaTXBlRU+y6krMc=;
	h=To:Subject:From:Date:From;
	b=rHF0CDy/GPx89bOKyZ+vKOJBclIqZzi57yekAsreKmbwYMvfq7Z1MQwNDGUW0CWWa
	 Ht0rPTyG5Xe4vapgVkyuqsqM0AtttX0LYMZZJfyIu78JEMYm67Q5ROOTN/8x3ToY8Q
	 Na227gwPSvxIo9l0JyuhdgkzLDba09mj0SKWTD2ImtD9celktN0zypWHLq7JI+b3vK
	 2g8Dcpl0XQjP/zcOo5oL0qla0M1ieUHc74j03ZG/Z0HI3t6hPnP+DH2C1ZetT9aL5m
	 HKI8Yro9+thFEWDLaljtxoGuV0R6zwINGun7od3wWLbl4yrq0vISW3IDI5X5RNdo60
	 tSE/l50nwVK1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ACCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053559358.32091.11054112245758232974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf0ceb246e36b0563ff43c3c2431b7b166862774999c90b21966fd66767ada4
Date: Wed, 15 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760535593
