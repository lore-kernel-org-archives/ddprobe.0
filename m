Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E6B53B1
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXvH9pcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F24C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701328696;
	bh=Y/bVfSsMls8iTexP9BfqMBDj31S74Of4EKh2GJCnXZ0=;
	h=To:Subject:From:Date:From;
	b=AXvH9pcrpFykJ7UVHUajfftMLZl7DexQwgY+QQ9VgpDYCPqXZ4HnVEKHf9uuAXern
	 Z7gN2CfmWeecjmGK1Puf5fk/FAzltyzAYz/VPXVEK0ycP+mxRhzuEjsmvlOr39vml+
	 JotMWjn3XR0FkHrcuYjhEUQ6dI6X8FOmfBRzGe+hJzetz40Owxo77PIGIhJhIIp8al
	 l1PQf9hYXKaehFhb1DT6mHtHAlpAtqtsbs3ScIjDlpVYjaw7d0MMsHhGU4l8lgbc+e
	 l3ScvP9OkQHPHWtUSMIOM/AHlc4+38F10n2VmktdO/KEgR9qMyvtoxCZmLDBXGLX0v
	 bhAOKPBWlYPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA44C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170132869637.25609.4390271149581465692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcd42003ae431c6e26fd8afbfd558be67c0e76020f2effde02379908715f97f
Date: Thu, 30 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701328696
