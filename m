Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BA641C6A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781929594; cv=none; b=KLj+/rBtc0IXaXBpcun5NhMv8H5HmhxrnRnlBEzTmarHMwmrPqD4gM8V+/D4w5iMgFQFJWz147gy9VGBMbDMwCKep8cAfA8DXvIgFa5WoecQKi5zHV3Zbtt1Iqw1euI74jg5oamy7o0TCiqbyYoxpThjjX7Dh0imILcdb/qqlDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781929594; c=relaxed/simple;
	bh=ahFtC7ShGX594IB5Zzqv/mL3ywh/anaXM6SVqD+DXGQ=;
	h=To:Subject:From:Message-Id:Date; b=RqS8xzjff+g1TBBpkYL84qsEnEqW0IKwMQ+maBecsUZcUhPYunbznMoPLbkLRV8ghIcAqTDUCL6S2JUeGCgW8WGFizlQB4+7iJCLgTMbNIWwBWdBi/9zj0lAKCrMKC8/eKcntofOuxKhQ/NylVa1V5jQyhOUEfUpgKHwqcBUxbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5wXXAMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5wXXAMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40877C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781929594;
	bh=ahFtC7ShGX594IB5Zzqv/mL3ywh/anaXM6SVqD+DXGQ=;
	h=To:Subject:From:Date:From;
	b=H5wXXAMPY15gwxoGajK7Rql2CKbo6kqTLn/59dTzRJqY6kDOpSc4CvIA8y66wds1T
	 WQhRpboCoj8AwkhINpEimAMeYEczi/9Sc6jSmSlj64vIwjXoPEZ/GPih1GSuyZmb4s
	 4Z0AGkePbF1HuyQyGPuPNOQglpbZo9Cd2rVaNuR6vDPD7VtnC+FbLw6wTK3ySGJ6yE
	 nIC8lEhQ/yzWyjB7aSmxlHTkQ5TMPIvLkMJvmKFhb1tA5Dc53hK43Pc2W7+JveXt3S
	 bLjVdqfNEDUYZZcY37sxVB2KMwgxtErNZ5+WzQ6HwyP2lc4v33M1uzt+e4X3sWovM+
	 BjT6SvbtbGnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F22C2CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192959385.9834.263619276402651768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6feaa7fabf926242c2c53465e826e0364393328b2ab65dd3271854a37bdfd8f
Date: Sat, 20 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781929593
