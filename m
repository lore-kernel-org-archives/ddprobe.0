Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57ABE19596A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717693043; cv=none; b=Ql7hgm/+p3hC+Bm2dFR4dULMDyCuqr22LI70g97a4TevoqeozJ0ttIIEVxLhJfns/vevaK6DbruGvSAtB/epwwZzkwi3IuVOexLDm5PnV0GgvM6SLRwGPCZgWNYIG+cT+7TwwhbrA6grtp4jRuHgdL5s95AAA4JQ1OT3YAg4bB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717693043; c=relaxed/simple;
	bh=hGmJx2W315a4Xla26m/hObgx004qlyfMAyabDPY2Bcg=;
	h=To:Subject:From:Message-Id:Date; b=Dwm0U9wZ15kj/uAJJUEEs98HLuHYbLxXnpArH0dVzpVcM4bCvoCWXNbRkKiTq5KTfWKBDoCw0FbYGdrAyHPk//9IBbRMeRTXKi9hJigT7shuAyY13u6t4eewmeLjilDaWcjUzexWSU9QE80P5AzgqwKdUZF1pqygaLBedbO5Ff4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGyav+6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGyav+6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60DCC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717693042;
	bh=hGmJx2W315a4Xla26m/hObgx004qlyfMAyabDPY2Bcg=;
	h=To:Subject:From:Date:From;
	b=TGyav+6Esy3veR+bgOsgBD9+aQT+lR2ObfgCIHV6BDyJ2u8h3iIzEH8MwQlvz45bT
	 Nw55h7MkmEgzcrjdOnwkO5xILnBtQjIpiQohPKAcTGUp3+ONyLBIQyDv4Af/gsyFWm
	 CBkSVRFPQap2Ymo8j1U4eYVNfqsvCsHNHDIrJr2WuR5745wPW3iLnLXoEeYTTXShus
	 hHhtWhpq18KEdemE2Ic13Ead3ggTHDc0LDkr/nMx3F4V8V715qbQRgxegvyGP6lTBL
	 3KExOmzIbwqwxLOoQJYnocpCQkYSkT8A4B97cQqSWC6hU6Z8SHcfUvbQUKoOxvDJqi
	 cLV0cu5Elbc9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1C9C27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 16:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171769304283.27281.4797008595428082221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002384ab7b81afd4a3f72c744c9c59e30cb58bee2c99d63e56db1f0d35e080d3
Date: Thu, 06 Jun 2024 16:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717693042
