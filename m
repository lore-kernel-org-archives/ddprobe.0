Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A70BCA52
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777761454; cv=none; b=j+UQt5iSPgL8jj68NfCptJsg/gkpJ7o4IJsrt5t5/MTlUx9MXx4GJgRoVkNuJQ2eMQ3wJ6ByEPgKTgYlnw/YGKEDUU23QRIMon5qH0z0kFS2Lke2ZVeKPrPF+S+XYYCpsEHy1T0COUwHqcBVjSXp/Ewb9OCt9EV9rNsyBFbQVD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777761454; c=relaxed/simple;
	bh=msCeS9WrZQ5GRBca2aojad5Yy3jKLEuPi7GCEZfDJMo=;
	h=To:Subject:From:Message-Id:Date; b=hSa5pbC6lRNdbfu2JQ+S2Iji3+dOqz8xu+H3HJPLa56+xIHj9uWajrydu8/7AIDAVIuisJq7uTjWVHK3TugPe5V2w0WhsaWW0cnyP66uPrUt5YZEfFibMYNZlgM1nTwma3yAS7qoP4rgMZRfbjCrF4s1To6qJMJ2hsUUcBwF9Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuuLHG6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuuLHG6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12DFC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777761453;
	bh=msCeS9WrZQ5GRBca2aojad5Yy3jKLEuPi7GCEZfDJMo=;
	h=To:Subject:From:Date:From;
	b=SuuLHG6LTEBTV5wnGNwS2kwZL9ffwneioLK10GYkosL5m8ejMcomRXKeU1/WVSc4L
	 uB5zkakSTjIEWH2vEraBZlNoD5RLegXQFCFttEdm7S3bi+/XxqFpo8ydrc6TeOvX5E
	 SUhTM0TwTao/kz7j6tDl0NiZ+byWwVcUWh/38/S1BIxchrc2989Kkw624/8t7Lq6jY
	 54J3Sb/CXOSUj8814YJp+7XsD4FFHDSsN3SVceIPWlDemXZgWNWIfuvDG+S2xg0b/R
	 z3LDke1e43RXCojy05jzdbI7t+yk8sPvWRc8fPzrs0CGo4v7cajapLmHNVtFcurVyJ
	 zd0uvLrRE0F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7DCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177776145368.10359.9860154110829219314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0961faa640338461fcc19861639f272f0a81093f80733e940ffaa4bbd81abfed
Date: Sat, 02 May 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777761453
