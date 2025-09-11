Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A431E515
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757551793; cv=none; b=lljTgYLBDNtd/CKld4AioiYAZs5nL3P6UutnzIUf4kwpwjHmIQUeoAx3BONqF8w0ihmdooJrLTUbAln0jWjcZ0M+kwr8Wf8lLtxCEj3jB3gh+2qOOigPhoAUMt5lwZYA2BjDk0bL6D8M1aa8EzIb7vpdG7mLR9W8e4EiD9j54cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757551793; c=relaxed/simple;
	bh=poj3EChLlnS8wBPYQDaoU2pyXt3LNH/LfSyYadgaN50=;
	h=To:Subject:From:Message-Id:Date; b=eMRlVy3WAakqAwSH82qtyZOhWSvOSkxm9pH4Hre5ama0ocBZh/QLd1Z/fTVmgsv3qDazngFG5NqnYOdSbAEmG3PqpL15OSq+Q737aCz/wXHCshcqy3lFCPjsUvqLrjMlybP7c2aI8YKAKPDOAmH4Mw6KlN0Cpkov1/gQ4o169ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6tT8qWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6tT8qWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48DDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757551793;
	bh=poj3EChLlnS8wBPYQDaoU2pyXt3LNH/LfSyYadgaN50=;
	h=To:Subject:From:Date:From;
	b=Q6tT8qWRxKsBAyGSlG2Hq+MxahRYyNIqdsNuUPG1yOMxuDk7IVtCPtoFI+NBWREHo
	 AsspYg6aqWrdBJ0F7drDKL8QvyJ0jjqp132drJDTLEP/9HKFkRsoLCrHcX3dh2IuI7
	 2Pd7FLljQ1g7sB/Q09YHb6c7I/HmF8jO3e8Ud1pwWi2cH4Zb1H3JLh2axFlMi69G55
	 O5mi1FkqYoHydJgwlPUd6zEMvk0VQVtsg2TqVr8117ncEZo5Gv87fUsrOLz70wJ/qA
	 bfVRuzVgpoKMNLxomd+M7iOByzTOOzTwXukKqvNs38lKhpLOJdRjVMOvAEVBEK/Amg
	 8+0DxwdQlmbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280ACA101F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755179357.22350.18344448211424580001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a09c6123d2d1082a624fec7b579c5aeb129f1abd15374d5ecc88e65a5b2f33
Date: Thu, 11 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757551793
