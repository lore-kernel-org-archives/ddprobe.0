Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7AA3537EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772598894; cv=none; b=DpdvH6uiwOGza9sneWcc9eJREwAEZnH3QjQ4kA/ggNRf79e6ELWO58gTeA3yinvJ5XxLOeT8LhuxUgliOuQuPTZKzNugpnsPSJYdW0f30UQGQScjv5x/1IDdI0yZJphjwYf2aRWgZIEDwDPkqPP9Q5+wJNbYrh1WkOHufioFxPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772598894; c=relaxed/simple;
	bh=TeYWQUjK0o5g2HxV2DSS46LeVSvoj+Jg+QpHL2CwYfA=;
	h=To:Subject:From:Message-Id:Date; b=N2UtGafmk/rsuNozK4lVp1FBOAz6EDp/v5luttLbB16Mf/AF5wnBDIlaVdvWXWa6zh6sZRG1UG/ncbCWEenb5Z1I61aNAnASAFElTN6Rj3Jd16cY00OZt9ZVmUMv2B0Gqec2dpVzJhcKYw39nCeYCETOTJeuPqAHFCMUlhNns7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shIHVB+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shIHVB+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B307FC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772598893;
	bh=TeYWQUjK0o5g2HxV2DSS46LeVSvoj+Jg+QpHL2CwYfA=;
	h=To:Subject:From:Date:From;
	b=shIHVB+Wg/El8KE+oMMmSFmu2Sly/TEVvfSyi5bQIdpuEQ6YtRQU2amm9c+DjaGU4
	 kWhnkFlL3JTeVMN8LPNiwSrixvyh5Mk7t8DtdWBFQ1PJPwLp3R/Fhrt6H5/2WbFhHw
	 f24KZ9XqNNyRDIclckaL/KMrslsnVsW2epONLy3rhrB71ZSvcvX5/riBcsXmVI2gCJ
	 GkfIhxrsWb0I+KNjuqsGix+RXpu6Z+3Ylt4vS/w2iJTcuYYk5gLtYfM5FAm9vAgEJt
	 /d5BzCoOlWDPggrZ22f8sjXwfnbgi7D/iCrbJbtXvdVCobgifC4k0beJpO2yKHdfVu
	 Qy6iT2Rk6RgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBACEDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259889363.25934.6915242888450604768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60c77081128b59c8c34a617698af1af4c2d463f64054875523f0d48cda2eecb
Date: Wed, 04 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772598893
