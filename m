Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D43A1E63
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767515034; cv=none; b=RGYSjCRu8c1gPgiFXaQQtX7EuQPR/D8rJalcRE1nvPh1PlkjFpq5C7YAkUvTaf4+rRXhkUnXnbWZHNfR3ccPcyBevl38YA+fDjK1zqUjaeU33k117yAiyxRXW7HGOgu/dNGwxTEEks7GBLibAZvGxT6EvJTEXYj9rrPEIDVqHTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767515034; c=relaxed/simple;
	bh=k8ktVybUVgQvVwKU0jIp0JOSV4UmMB2ICxCndoL5uX0=;
	h=To:Subject:From:Message-Id:Date; b=Z6G5Lx0ROjLtSddGfimySJXM2zMXtr5dfnNV/HsJw/H/F7f8YlQa1y4l7ZHudIUru/uYNJWbsurINpNietR3TSbt6HutT+saXybbWvJ6jSqStgdG1aZfbHCS9RhliUUgyEz1Z3FZgInSg4W75hFKbTCWmZOFmA9Bg/7ugESe9LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA8ECphi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA8ECphi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5395C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767515033;
	bh=k8ktVybUVgQvVwKU0jIp0JOSV4UmMB2ICxCndoL5uX0=;
	h=To:Subject:From:Date:From;
	b=hA8ECphi6svnoGw1RxEO9fd1ij/yuAy+Mvl1B7ybeWRen6dI/XoW7RZi00jgqrzDs
	 Dq5T7oRCB/b2taRTCXjDWw5iPujfSiNzvHgZo8F+8o/yHhGtmUKsqdiCuBtWfbffVm
	 za+YQB5HgVcDrU9kECCWxW8g5EAzA+THjLPONs3OxEydzT/Bs7htFBnMHksjh3jV6F
	 1y26DA+Nhgox19v0L1e3qxnCsQS8wn0hTqWf8CES3MhQTnmsbhm4Q5ylTrfMVSRCVP
	 0tbn5aR5ivm+t3bpcq1keEotR/QO7/Cuz0WV1V3q9FZy5qXPPNx6ER3K1s8sgVXov/
	 gq/HUmqtu8H0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92048C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751503357.9377.466383876813379604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a466f877ce50211d7b9b263c3468abaa7e677d145d476c06260680eda255ab
Date: Sun, 04 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767515033
