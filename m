Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A48266A7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764389574; cv=none; b=gtuT52nnBwK8ZPJZnFyC6B9W4XFEuwDhAVz1CdXKTriivAVw4VIE9XjeVIagQvvrR0cfM4jV8gRFK8fGLqJexFU0L+vDcSP1sDx6nfmzkH35zfvSJP0LUBHTx99Tc4aCCRROJIUu2Tgef3zq2mK6AzCMXZ6LJQXHblQfgFJ4f+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764389574; c=relaxed/simple;
	bh=+nDfp1DLDq2kCyNSMx4NC3r3Zz1LHuUDwKLis0ky3tU=;
	h=To:Subject:From:Message-Id:Date; b=Y3SyNvaNg4X2E/feh5JdPdAmF5WS1p+SBXwJwIDxOyOvo7rlrDWK3y66rzE+tdAa+8SPrFgNKBpdthrUDrdSbTaWFjVL8t/1f9gxv4OSqMryUeqFrKNICR9MZEcq+ZG8beCe+IUkKH54n+Qit6R4DA0ml49zLCQH3Z/EUHcMXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UixLe/Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UixLe/Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DEDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764389573;
	bh=+nDfp1DLDq2kCyNSMx4NC3r3Zz1LHuUDwKLis0ky3tU=;
	h=To:Subject:From:Date:From;
	b=UixLe/VarbsctpiImh3ECEcMF2HTYsSKSIsiIb0WNhf+2BILRtIsdLmgAaXY1v74+
	 F3zSbSIlk57I6bjamzQFH/WvoR4IY5SlA0bzYJsUkH1gvv3Ra5G/yIzhVrx6JcX0db
	 /vYAUn+9BogqZ+c6FqkeKYBePAPT7mJL6YMnEx5BcMIZgCXXB8R8e/HCE7g9BOWmEj
	 fv9qxXVeeSHevYBA6bQNMijlmqkIWVnXpoJu4XSM3Gf6qwDLnagAEdugrumT3now6d
	 WENG5l58ZYcFO3WDabAivd3ESgTJDLGII8AKPtlND6/oA0tQlY1ZJp06ds1N3ciwlo
	 iebN+lE/Olb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53FD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438957360.28571.12511169168442945933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b55644132ef78eb8317cc79169b0814184c314c62909c2001aed405e2b0f0e
Date: Sat, 29 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764389573
