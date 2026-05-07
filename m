Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4010637B3E1
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778144256; cv=none; b=twsBbCZMVU9Qhc/EcxJq9N+09LXBhYMEJWJWTk1UVUnF12MrdMBhNeUPh0AXFKWkghww42YDDWoQnVa9MEd2JF11EDWdTc/WnsyvyQgOoK423J2MRUqG4U8DNUtTvTRxG6wDxXi4S5CLeK06Zc77UKtRNYynIcNilF2yu1ccqGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778144256; c=relaxed/simple;
	bh=1WGnrJYW2ZEQmYOq8DuPbD5lWHwuEMej39HhJwkxRQ8=;
	h=To:Subject:From:Message-Id:Date; b=ZZ483y5Gkksp9U7ZPnO7Zoey8EYmu0VLBOCNK6kcG8tXs4Ys2xiFhNiXivCSs88cCkLCAx6a6XiDeyJQxU0ETzcW/Z0XMjhScL8SceskwvqyyXqdng4gH4+kbW+LJCknFVcre30T7s7IvgEF5KK5qauj3a2j32xnGyjXzdAUWeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4HBNgWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4HBNgWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6318C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778144253;
	bh=1WGnrJYW2ZEQmYOq8DuPbD5lWHwuEMej39HhJwkxRQ8=;
	h=To:Subject:From:Date:From;
	b=J4HBNgWOCVAUMatyS53PYnJLJivucuHCLVPSAlUa81o9kPc3LHKMmJI2IRLT++HeG
	 oofYMzzFr9RLhWH92Vz8SISHA8IW4peUf5Po8u+BRSSfRi4WPyyhv/XYx/3HpK/3Ku
	 OYlbtUcATfvu03M7+H+ewAaI0+UvlTT2YYhF+/QU8QYpzFPDaH0Jtz0n0dN+dJI9EQ
	 UZ2gbt0W1YuMmNR3IcpPYJE5IoKKENcgj67DljIVe+gwHUKxOtWD98feZu9/NVSxJz
	 /pyH8s2yBZzVptV6guumkbajxrpSL6dIAcJqXO9+LHKOf1N3ZitJjVpbRHc+7mEIOr
	 j/bYmkYiWW/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B626ACD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814425370.10819.10183045180953052147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6860e3c5e9156a823bb59338efc43a8b463390249de4d8b47897783526a764
Date: Thu, 07 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778144253
