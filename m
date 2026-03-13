Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F6374E69
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773438294; cv=none; b=SXo5Ytc85Q0GCQkTwWh1xSSa5ymJtgrE7QyksM1lz8WHAeLt+7kLei+1mbSZ5R9Ksbvhc07isYgcQIWe8PiEqhG0e3ETU/EtqY8ehV18/ZdSGjPwCm4NXr9kTzJPF2BKcYLMq4ngIu9OtRg6uzlMc3K60sYn5//W9R8MHfdef9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773438294; c=relaxed/simple;
	bh=uCDiSGjt+msVDdB+/2PJuhY02mjufox0Qfx32QIB/hU=;
	h=To:Subject:From:Message-Id:Date; b=GIftFN7YJh2Uw8V1Nqu3Z4eHYHGQBnTzEdS6TagWZ0tjL2QD/OoY1/EEtjIXyeupuarheoxmWEO0RBvNII6ocl1/0j7vgXH5uOI0yCpMuo+YOQIGZtXjsKA24HFQ/gcm+4MRve4WIDC+oRjXNgsFjf+nGWiL6/kd4QYE2kTOrbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFQ59NNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFQ59NNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F44C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773438293;
	bh=uCDiSGjt+msVDdB+/2PJuhY02mjufox0Qfx32QIB/hU=;
	h=To:Subject:From:Date:From;
	b=VFQ59NNGXj6l7OYNMtC3wWgpQBl1nKNpXrQPL5kowfxDPXonHuTf0Fw1Nq81a1gHf
	 VXysIINeCfZxlyckBVu1ButDIjxYxCtG6f2Rzxj0fCT+OrYyAck9IlaRHnq1SkviDp
	 fADGqEMjfkUQ1Gi8TXZbhsY4Ygeypz/PiJZnrgfQO1zxNFkJGQjlWCUW8C8e6sqK37
	 HqTzkA7exp7wmwwI9Heo9qQDQlMwuTGKBUmR6GaNsaO7V5tUjJ10/OzaBaIpDjo7ha
	 wfJ4mlmBOId1HURVTIhc2QwDdn2xcPvSxg1cePqq1PNY9N+Vqto8qJ5XyWze06DKLm
	 AnKwlp/syJgcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D61107BCE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343829358.13331.6964051902223044408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f16b8ab7da9a3ba9dc7c09c2944137d4109f068620234d1cb429913f849ead6
Date: Fri, 13 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773438293
