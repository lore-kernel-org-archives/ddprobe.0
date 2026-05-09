Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E92E3563C7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778355454; cv=none; b=WY+y8gS5nA6tCaZiDjRa71yVCU5qCvwwK815nNkmFT5KG2SGXXPGbyJmcvSdoE3UWjUpFkJHzw7u65jttnQ4yWIauCeOcRSPdzNNhqVNbHBSs95LsM1rj5cUS8yJv2WCqOa5ag+m3XeX/oEI1oSxCo2B55il2RGc+z1RoTzlu2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778355454; c=relaxed/simple;
	bh=Kl7BVXofCy0UNLWJDuuMFdrpkbd4YDLPsok+esdCr84=;
	h=To:Subject:From:Message-Id:Date; b=WRB+BvoSceFxCrdz0HqXg0nAYwWbWxI9daZVknPMO2HbfNgD45YJIRNWaHxE77Ig8r1gKXKCJFOfB/hcWB4s/5Ikl9TDo4UGFxQubUJzOk/+9zu52lri5PW6l3KSy2yFJ7wh9zaZypYZj7DbXi2sX+aqhnNI1+xfvG+QB52RKt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzfeBJIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzfeBJIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40C5FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778355454;
	bh=Kl7BVXofCy0UNLWJDuuMFdrpkbd4YDLPsok+esdCr84=;
	h=To:Subject:From:Date:From;
	b=kzfeBJIBW5ElXuQhStG+YwYucB2Zieh5sjNCeNQqz2hVYkpI61HFRJsCBpOJ8ywEu
	 BnGMwPeu7L3he0PFKqoSm4i1obI/++rOjn3gRaPe8+PPDSPay8aaF5fYeXmuDb12Zj
	 X59dvDTcSzSjLtOvRvtiMDMQ3pTM5vqcYq9mPJGrC9cBdPf6u86w+NgNqj26yD1OkX
	 co9rzzjgYKXiiI3gSLlcLDVlgmNOXeiewMguSK4H8SHFDFi1nPpl1lO/FdoFf7U7FY
	 Yn5kV+F1rByg5LRxx07ikI+JW92Mc4Vvv5A7DCENjDeFSlup0zvvXyKmw1c354Sn6j
	 Tv6QmrkPPYq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0436CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835545383.26446.10820249955482776149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c756ae03c2c39b14966af961419b3ed530157e478104ad34fe73c683b64b7f
Date: Sat, 09 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778355453
