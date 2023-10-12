Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D06A3F4B5
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M888CwLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBCAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697147828;
	bh=uBbJpsKS+BMpmuZUxU789nN0TuWkZLioP3hS/dkSsko=;
	h=To:Subject:From:Date:From;
	b=M888CwLSjKSK/l74T3RlNF60q3krA4E9ThjF37tD6+20S0gQHWiYdS4NnElKY1eD+
	 tpheCWpGwa+xEQDh1YBKTPdbBycPIzz5BqQzIqxIRJj9K3sezeIAyzrKDaZatRmCnm
	 8Bh9qEKP3yADllKnQvUtZ71otRLQK/bJQ1subPU1Z5xVd/xk/iGVVLcOCde8K79kad
	 dFIHbx7XS7UJ5yaAYoS6Zcu3c1aeJGIKvhVHGIHkJSzNXjNJ4tkp1RJDVGLOBgfo6b
	 +muVnkXWHc3AYcu/7e5VNwhzU49YnDj8vQJv8Ye1epujZ1aqf3wHpIrqIFp1a+bDVV
	 U2PsCKczUe5Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BAFCDB474
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 21:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169714782867.7923.8463643932351330822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ee12b97d5cf883a34927bc86c5a4310adc73f9a689e52443da00e3ef1f8ad6
Date: Thu, 12 Oct 2023 21:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697147828
