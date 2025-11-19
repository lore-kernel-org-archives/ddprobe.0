Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481542777EA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763575915; cv=none; b=n51ju4Q6DEvPMOvmY78rWGEoR21kKS6VyGARcg8VM4a1C8w4dswrYXfh28d0FG15EKjzwM1CLyQ/7oHgrAHIrRgYGzrjA5SgrPZNKz+kuqmTGKDdpBRD4J2NU1/LSjMrUAPnTBypJvB4TtHwXsIB7W/Bvivt40uUqvg/qjx+ONg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763575915; c=relaxed/simple;
	bh=2aGfPMcDJT5NYwykO0udCXjaXeVQIBNONGRMG1DInN0=;
	h=To:Subject:From:Message-Id:Date; b=SP0HG8lTqnT/d3E7XREvGnOJckEvF7nL9pvndokCUrKAAlpw/h5V9tj+Wvfkv8Jdi9vkvByxVVdiP/vRvMePWKTwhaTmwbMZw0b3QA/mWY/ogg1NYDKgo97hjw0sZmw0Cb0FSQu3m2Q0wAS5edhS453mMOZ6RK83B/8G0bDIiys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niw+nOvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niw+nOvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BA1C113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763575913;
	bh=2aGfPMcDJT5NYwykO0udCXjaXeVQIBNONGRMG1DInN0=;
	h=To:Subject:From:Date:From;
	b=niw+nOvPOtpnGaz0yK5vbXcJEQJJYEhCj5vYtLq5Hvtb50EPI+/c4V0HepxX5Dujx
	 OiqNtTfCh+O+NKdLApbPH2fuG5XjmDDYCJxh4EQVwdQlcbOA8ur19wMILtlrzkyuEu
	 0As8ch6sO0dNenAo7ZwPwQrPepHxP+DTUirJ5UB3K0rvbQ0LHKg4UO01dBznNqT2lg
	 Zq1R/jmPXz4Nw1Yd9LLDgXovHHIDXujf+cggEGu5OGYbr1HYfeHhl6XuS8iL51F3X0
	 3sHEG5V2Yc4KA9ac91wxkZZ6tX68NSxjNfgKtO98B8LW75nufqJyu82R/smSgsTU3h
	 E/EjaPH5WVyTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174ACF58C4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357591358.8151.8769208892479736039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201bbffb6685577090bae631a04a9b0805402872086772e35ce867f1f5cb3876
Date: Wed, 19 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763575913
