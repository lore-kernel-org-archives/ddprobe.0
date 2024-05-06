Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7637A158D9B
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715022143; cv=none; b=HYZQMpuf/D8MvX61vSu+jJjGxZXomjtnrPPi9bPSlS9L0O8EP9c1i6dy32KCDlv9kLHm0E+4bQIuCo42AIB88iwz4k8/+sSzwNfIvaXGjqf7GXCkn5C28dtUJoFZsUPaoJJJJ0oZTseFwP3Wko4YvqJRCI66jNG+XCVZzuA8dy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715022143; c=relaxed/simple;
	bh=BJIyqT3u378qxkRNO3FRquA9TVa4pL6qJN8SQsFUuSk=;
	h=To:Subject:From:Message-Id:Date; b=EJFhE/8Wt0cMpmQlSFBjmwNT00PEJwUxGFlzn99UWQxfgOgO6NzCJ146IZJjwjgZdyc1yw2aNx40D/56AeMZP6M63Ehp4qHCTA3wP0ZAlcytSr9jBf1aXhVu/CQmYaXeX5lgSP0vtyh7alz192JEqq8UVwN3fF22vmXtAMjbB3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEVi/LYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEVi/LYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD68BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715022142;
	bh=BJIyqT3u378qxkRNO3FRquA9TVa4pL6qJN8SQsFUuSk=;
	h=To:Subject:From:Date:From;
	b=AEVi/LYPfbnSLcYb9labCfNx4DynJIikChgv0tUwkuiP90jSPpFPCkkVLDUDyPRIf
	 oH8kDBaT53c9NXeEzqWwxjXGUFRJZnGv9AxY+3xJQpARxF/Jot6SZK/F6Cv3+g1pO+
	 hj+icujJyELTEyEOttOz0Tps0aGO+bsTqcvUkIwK4Me4t/Z7G66YXTVplur86IDuXC
	 ZH/lPulqWsaqrYdqnR/SR+ToV8LOvS8gj8zq1QZd/W0dpPf8phoKrGtMjAEriEXIfP
	 kMcp6O6gxW2kolnjSl9Dad7hbJ/OQZnLSzx3wIQqtv4hTVAJnFS9GTDArgP5MW02Qv
	 3MokRQxM+oNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E1EC25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502214279.19017.3121600031165912529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639a208351629249c826c90e8e8846af44e06ae5745df2759662b231b35dd358
Date: Mon, 06 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715022142
