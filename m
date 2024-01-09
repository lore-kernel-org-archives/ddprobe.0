Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1788A12E41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3aPtulo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80EADC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704842896;
	bh=GaPqXJfMZ7jIT+jA33qARMsbotyN9h4yAnwsMJZobIA=;
	h=To:Subject:From:Date:From;
	b=k3aPtuloo60PdEFAndBX8V53XDtoWi9Sh3HLAmIa/Nn1r2no64txFOOTQHLZ38RIZ
	 sTiDoBtOQePQCVqqyRoRmxsZbZOXWN/0YEzj15L1+euJwzxO0f1UUO/BSz9G5XcWUR
	 wsDfE58Jq2FbX6P/qQpXos4tZS3S5LheabMh77f+++ApylH/LGHNNzvOY+1B4VASru
	 N66ZEoLMLCCui1+MrwTlCVJIBdBG+Cyvv4wHSxDvKE2z+q5csnZe5NpXGdjBofbrlt
	 hK35LSvk4CUOCRRMyr0KnYVjuJJvGHTvkXXljyXITD4P7ZsOCK+OCrzJx+RLNBSfgn
	 VV7rWQxE+0hqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62448C47077
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170484289639.3994.8243858799820146120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e61b9f5a706bb05c788b2d0a6573ca69f1054bf82596206d68d66d5c1f3e15
Date: Tue, 09 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704842896
