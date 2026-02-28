Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8953D7D8E
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772267694; cv=none; b=Jt4JC3c/UtRiDYY8vwSm4KHJR0nmsbasIj50WFfUx/azwiUQJ+2G7YSyipGZPLpOVL2wxndhahVwIgiIP6TJjMRhvErRYhannx4VksA3wAogDobpl00tQBwuFWLbh5afvPCRqPlGVlDjc2TLe2TyxAc2v2ipUNGFgFJR5bDaRTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772267694; c=relaxed/simple;
	bh=FmKlca6fWH+BSUhEPvzhODIDfTByRKGBbeHrfT6HV8k=;
	h=To:Subject:From:Message-Id:Date; b=uAC6vjWbvyOFJtiZGHiQtSnknuTWCqMuLmqK439AFeq+LqSeDqZ3Ryycdj6uE7NfzYo0ZQOV3qFECypJbREwSEnJc1h/elXyIM6kot91EHKKk5RjoZjjAABjMRfVT6vzAHC38C0eLzpKdmkhipEqCQcNkOehgJ+SLDYaedi1Ags=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnXPSrSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnXPSrSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5415C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772267693;
	bh=FmKlca6fWH+BSUhEPvzhODIDfTByRKGBbeHrfT6HV8k=;
	h=To:Subject:From:Date:From;
	b=HnXPSrSWogstd8IE1cAS/fLPwzl7oDdQbc424PkhXxp5hLQfC8kPVyy+rB7rq9yye
	 cKLCdq9hekbLpEV8iA0SoHSUyxP9XEoUrpV4HzkNS9UVpX5iG6QSShVTVA7leFzBM9
	 9M9vwK0cEisJB/KS+ZJ70cJ5hCDKrzKPopN+xOBg1KovHb+D+VacPEWzOiNdx6yAWH
	 nJ4PhV8pDB64WpKiaFqOpX9qi9SweEyFbAO3iY9Ve5nZWioRvzQbp6VA0fkYZ2F1Pm
	 fQNpMT4fd//gN1w5pmefDsWXXyIrIl1YAORCJg2EHXoFfcC1WecTTHLkLOmhAov5bd
	 g8/sCgD60rOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3FFEE4D3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226769358.13449.10476526334727856293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5329fa57af61b7b8f31580e6eefabbadb35e9e800a02faaa31adaed20133fd3
Date: Sat, 28 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772267693
