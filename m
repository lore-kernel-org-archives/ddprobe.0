Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C1376489
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047093; cv=none; b=bHhrgBY/LRGpMu/55mc5vTvdanbGKPDrnhw1R9nDtT0se7YOtlZYq1MiH2hhKEY+6eejzM912EVThlc3Tqc2p81ElUOoSAIZpE4np8Nv/8qUs5dT93heU+nNQO8zx1yXD+U3h4i6iT0e5hYpYeIAXJ+svuU2Md5/TMj4e6etbkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047093; c=relaxed/simple;
	bh=77K49rJT/4KKOZpDWjfpaJJg0tCpoAhsMImH5iu7K8c=;
	h=To:Subject:From:Message-Id:Date; b=kz5ng1nSSshG3rTp8mxWcUf2Ohxxu5ZV6OzX55UpPrrpCgkB4RXwnD+X3hGby/Ma5pMLr9n1Cqhn9K+MiKAueij1HK5wjNHPGE8H9dJkvgaZC1fz5GyF+CW5O8atRQlWeh50rbQM2BpwT3tia7Ppd1kT4IATjpCHCZNANp8Gbso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNCCg4X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNCCg4X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE521C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773047093;
	bh=77K49rJT/4KKOZpDWjfpaJJg0tCpoAhsMImH5iu7K8c=;
	h=To:Subject:From:Date:From;
	b=QNCCg4X99HGfKul8lTLrcMBiag/gbx9qttr/x/l7KnKeNpco/77fDlCPzZf05TuVT
	 bpt+Jyk6SgqAYxdP0wPBiAK0JsBE3iRmm5m8KrPGwYN9OQlKcWppvyFxodYF96XK4X
	 DWK+IMPpuNnA3cFWQH8dzxKwFgwphgNnBe9QySn48kFTF5FxZE9ZO4cM+O0cmzruj4
	 AeJzfYe6Ec2wck6pG8jYyBdke1Vz+KOuqCUHhc6rgPCokUBuF2KSm18aZ8HMjI266F
	 4gm1Wo0xOcq+0BpoaXmAiumiUu2bZIh8tdSg4UXYAMD3LGwqCR8xZmzjo90D/yfVU6
	 0gnVAWp9JcjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB5AEF371A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304709363.26934.12774255435945032614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e54783b28477baa634e78e1fd081433dd16dd036716ad3dd502f393612c7ca
Date: Mon, 09 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773047093
