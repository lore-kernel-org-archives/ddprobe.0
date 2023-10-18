Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93E37148
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+nCv5Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B25C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697654893;
	bh=dZeSZj5fO5H0PDFzOsQnbgaZBrXbK+9fgO+v8wYn3V0=;
	h=To:Subject:From:Date:From;
	b=X+nCv5AkBeYT5XNFSiIbCFluLgC1UCfPrlhwUvVjdhmRft8Ar7xUQ7nK+FbtYjmI2
	 WousdbIQFEPGI3UORoX+9DfszvSyC45TT3kHAEenn4P/D2AjDBznKF/vzOqvbr0RJ7
	 jyv2lL1XBWzhyjHCgcZCyHD3hwCGk/qDfvtK35Tdgs+UaBisUQu7vygeU33SelZdmb
	 kgBSzkVk7dVHBA4WjAirxBIB5VOU8MHoYs55XPQ4wCGYRoYoXm9srV551k6mguM+r2
	 8V1ocnSRDBswGfMDy7G2ktcMrmvX/CjA0KPYoztAfAOMF6P/81IKh5A7dstlcW/z9f
	 c8P7MemuH5IIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C5ACDB482
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 18:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169765489287.1468.8151441169369716005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335b9639029d69a2583558bf6ba0d8b3a6f280e167b7559e5624cd410f2228bc
Date: Wed, 18 Oct 2023 18:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697654892
