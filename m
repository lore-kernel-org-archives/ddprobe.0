Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162CB2D63E5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777015054; cv=none; b=dkFdRpnxM4LTseszNy+bHOVpyw28YG2X8KOBL34+3ttq/aP8F9IdEZFdmZJxHPwHgxNVOa+Ec+DZbDOR+MNsniATCC0YTvujT4ZCthsJ5GS17xh5Dxe2QboDLEvLtSvXSe/k/iQHLsLGI708KGeHzhGqrS5XaHfBjz4ywh4HRhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777015054; c=relaxed/simple;
	bh=xcMb5XuMix3XsUVy+DfxQ0oaCLs/zpK6NmpAY3kpVts=;
	h=To:Subject:From:Message-Id:Date; b=tVuZktFI3UfRa5mbjZbqIyOEfT7DnlZRTyxsZ4TPEK1qpW7AVJ7V8f7a3V/WIh0o0DhNoOoYTvUctNvlEm0IHuRvVuO3Hxk8/9CF8tRqY2vVNQD/FcsgD7kpb08X3ntDEM71Uj62oXbFCr8lJpC45SyJXUux2ZNFkp1nVAL1EgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcYiRmxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcYiRmxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA11BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777015053;
	bh=xcMb5XuMix3XsUVy+DfxQ0oaCLs/zpK6NmpAY3kpVts=;
	h=To:Subject:From:Date:From;
	b=tcYiRmxeIp5BKd5EmhgFWmKF7JBMilX3UwBscEUTKhb/fYVJc76o0oRq4IJjUTwSJ
	 ahmaYKw3UIUGTNJqCU+H8pL8NHLQaTErh07P+ZDwkh5v+2XmJ1ZZ83bQsg3p8R/fDZ
	 Q0ncJLmDhcHibyhT0oINSOoPa1EPyk1fjYenFZOGoR1NjggAM2FR7OaW3dFoc2Bh7O
	 QbiM1/egvo2ZITGhK9xfxuMSgsoRorjv4/0pGak4WaoW0GWTodl4oj2vsQwH8lhti6
	 AwKpOYGAXzhbT7T0+WbnoUhBZyt9ffDFdxK7h0DJSQXKKamC0PbMV2t8JTe0BQno1x
	 j2nyvRyKQ9n9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E9FB44BB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701505368.11303.17772000006147453870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab75e1f1df1f7ae206dde89827066080920be33eaf9a569fbc1241b85801fbe1
Date: Fri, 24 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777015053
