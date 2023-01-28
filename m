Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64E8BEC
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D141AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674943385;
	bh=cX+wdTHgBTcBO7TmZqGO9uxGx2cQLv9tRgPKqlfnU0Q=;
	h=To:Subject:From:Date:From;
	b=KITFtylyigvfcWWK2OKUbXkq4p9y7VrkhV3kQPEXrk+rKZ7qBdF9hajnOZVQAQDwt
	 5JInm/TKrIhV8JmXlm+9qoy+GKPdf05/iroDjFBPcTN01RnlJIa5jy1CcQIHJ6aP1y
	 CA3tHAoeKI6wOh2BQ0qO+WtQFUwFMHfX2OvSenNNxRuIj4gUPiYCrNBBs+gNZRaxmf
	 S4+/x8nC5BZI1HUtGl2QI+cHs2iFKnSsdaICc0/RoTGAQs8sYb4NzcaMWKvLjm0BiC
	 AVxe3CsH5te+IpkRgS4OfR50kVbVvFTmYzmhgMW4JFD5yEN5sjIV5r2bzYsa0RHx5X
	 8frHltFtL5cjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B451DC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494338573.25288.14829556361219062829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49242d0a4ad5efdb7d95d19ce7a7a3d3763cc91b6d418753fcf093f2005cb8d
Date: Sat, 28 Jan 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674943385
