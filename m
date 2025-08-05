Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1903827146E
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754414394; cv=none; b=biDMfjoWnp1eho7hjHEk4MAld5Mrfrss5l8s71Tldff7lODVzHssSyKoLQEs0Sp2jrA/4ge+wLZE4fO4hMV3rti9YeAPlCj9jSK7kKgQEpYuPa3s2QqsGALJW5+riah0pHpJ3MCaswcWpMfWa0o+FilgPeIqsVhzLutUxGsT0jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754414394; c=relaxed/simple;
	bh=/cM4aUxfuiLbBp4D2nzwPRsvOjeOLuHdID8iXgRgXrM=;
	h=To:Subject:From:Message-Id:Date; b=HtiG83INY0rf+sI6ZUWuxqs3/3ix4kUt2t+PUolBlmEhcOsirOW7y7M6PJbT9etGUlSwCfWNVLAeV2+Q9iq7+05UpOjUtmkQUxI5eV9Nc5AOy2dEor/nEfBi+2CjCzBRBjFOxspPqtL4nPgZy8n+0qLU4LaGqdFwOUZh6ESnoNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYOHmrow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYOHmrow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754414393;
	bh=/cM4aUxfuiLbBp4D2nzwPRsvOjeOLuHdID8iXgRgXrM=;
	h=To:Subject:From:Date:From;
	b=YYOHmrowghQPc9q0LshWPKrW5qCxgUpQE/DC2ixNmJ7vb/5I6OvW9ZO4pX6jEN52w
	 St7+56+Ygssqp5bRWg47FaJWfoHrZSWgJAtO4gvQbTiW75osQbaVmU+hiA/4pZr9QE
	 OQ+cTM1R3um9B7m1Dcd4kkxTiZrAjqJjVALUyUd4Xml+dO7PJYemLtnOzllSQlEPBQ
	 AiLTucxrriFQM/nQlSA/Jyg11Foe6tQ4wzEeE/FH/m33TTmtWQMTqfraAS/vNzBgAH
	 Dp6untQvRmwLxAoYEyuDHmijtA1KDrUaiTg7DxMrlEgLa2e/Q8kDBrYPnHdKpwq/No
	 QE+O6TjByEaeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0BAC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441439362.21895.14073262782800506303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b9df936dba3affdbfe74a31f8d77d7d3fbc97655995afef05180e2f2680e0b
Date: Tue, 05 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754414393
