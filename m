Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503A016A923
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720530383; cv=none; b=BvYV+b/nW8XHaVNCjTxfricj6sJv5FLUB+Ai8BdU9lrPBTUaZIwGWNmgWZBre1gPgWOlYHlUhPenK4AGljDVo1HEAdKykGDQ8A22Ox0P9OQj9h3zJ7UhUAelXP5a3EkT+zaM6CXt477bzisD2P/Bq6vb/lnV4z8l7JZCjghBuzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720530383; c=relaxed/simple;
	bh=ROpCsN3lCLBHw0ENkxOfuz05Fe4LXmvCuPWSvfJLtSU=;
	h=To:Subject:From:Message-Id:Date; b=j0/07kVQXM7CG/35oa/jvEshVSlxoOEb1Zj8sQ5QzIvLeXNszj5iWJ4IrZY67RCOOBgxONmaj97f183lw31T8nxHSYYzcxWzUKJjgk4M2Uocmxe1koxiepLagDpxlotyOlyDp/6C7UdUvRfzHd/Gw/D+MHLuWDLrxAt9CFR4Bnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVlhiH2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVlhiH2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41BFC4AF66
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720530382;
	bh=ROpCsN3lCLBHw0ENkxOfuz05Fe4LXmvCuPWSvfJLtSU=;
	h=To:Subject:From:Date:From;
	b=jVlhiH2VVWt1lea0ZmEU3yE2CKFded9Q7BmQV3QQV5PNz0itEXDL/32Dhgr3WXzrp
	 UkmU/mVQSoTgnRmZGtU9uE5q95s8h5c203yRQhDX/z9Ifz3g9Pkoswt+oNI78wqedw
	 stJJR1lJLh7D/PCVb6TVTyEVmOexyVIvNqGUVrIXFA3hdERiPlcAoWIQ2hqZ+e64MP
	 kjQ4xXyDqqauLiN08RTe7wJV1mpmTQf8l9Mjaxv2xhs5aKh2cDfw9MelwDCA5MJfS1
	 sWDuFX2u4re3jWfMv59Q3IH66Tc78LNI85pHKkSu6RzDpHgum1Xa8SQQyFjSzVfakV
	 xVYtUSSDm9FDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FD8C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053038277.26888.2744482416999146560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78202113cc4aeff6ee9f406807da5655e421fa183e06bee3e76120c723f86dea
Date: Tue, 09 Jul 2024 13:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720530382
