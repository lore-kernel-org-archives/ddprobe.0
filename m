Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D212FE580
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762855193; cv=none; b=ElYxH6YHPmMmPO+Qcm7zqK6cRX6IUCT8h+jMqHqhCnNBqSSOLa5WrSACH6ew2BOOtW3eSqgkf7yMw0pRRZ+KxrmRCKtX+Sc9VxTWh2wb8b4tWC72DiEADukrQ3HGxSQBcG9XP3ggEr18rdxUtz8G+03mBWGFkwQlX1mWdErbUHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762855193; c=relaxed/simple;
	bh=08vuCddKIvcZ3N5wNDyiR7Qcxgimlhh1R02D6auDlxQ=;
	h=To:Subject:From:Message-Id:Date; b=eeJJlJgkns9sBWNWXJ6EkGBycCGJ85Y55oSlMfgHMcAqfBYMhI24KDjP9orMClf05dY91r3wVyt+BOrhD5ttiXR4lKQDLO/16Z4EwjrCIHRmaP4e+JIBstgqNnU/SmguUfY9zCfk//cu4vwfPyNehllWxJlNJ1neXTeGa+K2DXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMIP7v2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMIP7v2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A37CC19422
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762855193;
	bh=08vuCddKIvcZ3N5wNDyiR7Qcxgimlhh1R02D6auDlxQ=;
	h=To:Subject:From:Date:From;
	b=UMIP7v2ZXHutnhvMcVC159PJkFM4e/4d5EHSF0DpAAMWbZVUuVUcvL4KUNkDvOhNA
	 tptTGl7fc2VhaTf39DVm0iQYXqQ+E4HHb9OUwdssZpENtpKLict6M7Q62JH0qNZFOY
	 iQ3IpPeksiptJEiS0spa9O9u11D1K5jH1RnyDwPeA4DhGpNqDbEiYXLC6Vo0k1hVyv
	 CktU8Tl6zz6z4hNsDRWBspHMRVDyVnBf5vtEqXuUFrVn4gLsLYM1NH3CxtKT9Xu3ys
	 PXKpYQgaHomBSg+UhubMYMvO9fuA+Tivk3rDS1WokP24MERHc21/VNiEr6M6m589lb
	 K3WY74vW+rF9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB90CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285519357.26680.12666025483602807463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286b7322a792bb496e6aea1a0aa49c46531da486a71ea7079265dd594732b13a
Date: Tue, 11 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762855193
