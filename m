Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F60A17D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760186994; cv=none; b=G2ticEn+q+klSH6Z3DHW5izGd8zHtJsXu8iw7bXoiQiJpGRJ/eCjGowAOJ9mKsQSABvt/uGU5GUHSFzp0spnDbgutaz9wjMlaDWUSb+qK/MlJKn2tWUOcavhiByHTkqc9CGjiwj4rJPeeefqOdoQ63Y9YKVYVfoxVbCwM1LxiAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760186994; c=relaxed/simple;
	bh=UrjWNfsmJmdItEx4h2nUCZVgg3Fkgy23VWBDv+g9qIs=;
	h=To:Subject:From:Message-Id:Date; b=dHF4WZoPv+mC1Ny8RvQMJVxU23MSxpdsGFmuj3Wa373U54uNy1BYo5m3wSfstD6X5rrst+yWFkoWl8StPoxcs6+r/NdgPAk2hBlsue8699f+slBS8Zbr3BchP2ChGVWUGQHwHZoC+CIfoMK63hzUbz8VbGZw9Uam+x6G4IUvAOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilk/Tb6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilk/Tb6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26BFC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760186993;
	bh=UrjWNfsmJmdItEx4h2nUCZVgg3Fkgy23VWBDv+g9qIs=;
	h=To:Subject:From:Date:From;
	b=ilk/Tb6VhnGORmI7k1Smlnn5/dicdg+HKd/Crlo7Twz2e2s8d1mc/ZToKX2MErtL6
	 1ZdyVPfjvDIaxgAxGY8aAKyBVk4EbZN5JGHaJj1J7ZoGu+Z8WcadIWgtux2qI/BXcC
	 5XbaoGSYYe8AV0OUt8UEaVFBAMjrIns4fJnOqLiyK5PvhAIpLFqelPNJX+FCn+NwJl
	 m/n0oonYLGN8UJx2Ox0k9mqWWaxdBQnWT1f4Y1pRol9KwKyo4CComE1gsNiiOX28qk
	 QG+LsyL0L+D4L0MBrCBou9v0NHDeum6VEEkAvzNh61YWDYP+6e0IvVWQJ3Lg03xEEc
	 dmiMDKNpthR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DDCCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018699358.1825.13539387462244337252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442590a09a32835123a1d67a8bbdf0203e02419e846207060dd009a209f1d832
Date: Sat, 11 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760186993
