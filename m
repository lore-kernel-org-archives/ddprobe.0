Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B185520DC6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpvPZojq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E160C43390
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705142896;
	bh=zi+99Q2KF6BjcBkdhTfRayDZ7nFzDIwePLfb9JQYqjU=;
	h=To:Subject:From:Date:From;
	b=VpvPZojqNvpbTnuT6l6TvsOjabg75UEV1mGae30b2mhcAP2z8SQO0oanbBUXVtilg
	 AKfOEyeq/V5scbKYKH5qI0rFvXxzTSkA9+IuumoUyoSdoj9xgHjNip1GMJRh7RQV0o
	 M221PVuc4DX2VbzDiKdkcRLXjkrpynyhWG/vn1f2guiGGUNuzb6eBY1KS7EqQ8cK1j
	 xOc7aMHWI+tWI0UYb/Yon1I5srdwj/lFlT399muI3IpUAWqkvs7WSpKCGwIyMG7OUT
	 xWp5rLJUVQ1K0CVCFX/KEP/cowEwvOLyr8q9TEJpHja+5PuX+ejSNdXZ4316Z3Umg7
	 kRcH9honBGANg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E97C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170514289641.22181.14141123679476129175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67970dd798e8c1c14b872b2c056776b66289acdbce27548b926c5409c333673
Date: Sat, 13 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705142896
