Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8C62DC79E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757866794; cv=none; b=l00gr2443p02vaAF4w/CcJjgaqEBLygt/Mem4XZJlmLPtmjEkQDCq9RPaTNavkkz8Yew/0sZxHlZLC7GDt2Sg7nGB62ppvxe4mRZGmwAm1EGM5lVkMc0rzyICUYsi0md1JLt/wOcW0Sqd+zCPhirKu6F3NldJaz0DyYKiJuJ15Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757866794; c=relaxed/simple;
	bh=6f7TPfFIx7uGfwF5QRtdPlKMGXVEBCLH/1kLssyagAc=;
	h=To:Subject:From:Message-Id:Date; b=Rw2KkfWpM9L1t0Ibz8azk6A4YFdYbKpJ86F7K5yWUmWwZhF/g0cVzo3no6+GJSmxuNUPiDZIuIKjohs6AGaWAZxiEXx0ulzF52QGok1+XY+Pc0NY0weab9q1yrdBRrcHAsj2FKCamcXc7/YQlEejN2n5rpNkj+HBhcRlkGLmhG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbIoV4Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbIoV4Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757866793;
	bh=6f7TPfFIx7uGfwF5QRtdPlKMGXVEBCLH/1kLssyagAc=;
	h=To:Subject:From:Date:From;
	b=lbIoV4RscukgcEVXZzTPUhhC6n4/j+5glmXTROB/bvVNIoQHNLaTUv786VPAbEIm3
	 ENpTm2VYZCC8YENeE0Dtgsya0Rd9NHzbafHONlHFTxfNMNDKTyGsh7KaV6IwbL0y8t
	 3Mwe6yBof08ZUf/qqdtabf6Qe6Q3YB+MeyZ/lSemK0bK+LVRXOzfIwfMM2HdUmy6hW
	 r/gl++5f3+5B2w3ZO0NCwPVESqwakHK09Hn00XpGte/n12BH48J1Ql8fVpyvTbJmEw
	 QMIW9GcE2qylkEDKXquHtCK0EcI9EG45HMgaapGlKYAzsMf0OHOQK2jQYAB8bTJyXN
	 K0dW28//UNQjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92722CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786679357.16085.11086426724046205926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f993b42a4e48e1e7f54e0311bc52f03081652279c708fbab810411be84f6eb
Date: Sun, 14 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757866793
