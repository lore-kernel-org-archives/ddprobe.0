Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21E37860
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkZCvUf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F16C433CB
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702904296;
	bh=DikNy3aXtevqDEB1sY2IpHcANov6kvCidFLCICk9Ww8=;
	h=To:Subject:From:Date:From;
	b=XkZCvUf62xALrln4Sumet0OkRzU2NT6gXZYxJervRVMaDDPovEo75sMcN2GHHjSUS
	 L26lMzGWmp8+3CTqU1EZCXNQWmrxM2dGeCBTleQcTUfYCVvhwSz94gGJ32WPFQ1zId
	 EBNDOFf1yYduzTmWPsiW6qS1AK07gcenBBVc+uL7XrhtccNFCFtazQ7B0aHDSIZKIT
	 qB3qTi7wVQD69cD6dgRVaDX44e+gIUV+KOytYY4MA00c6YESGn83weFfc/CemkcVaw
	 VGvNUMoSqcSIu0GyJ1TFtYZ8UEDT0EotA0PLu6dO1L7TqRLXok5xt4LjLPLl65ZkO1
	 i/WiGuarQfnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B5DC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290429638.7918.5242093673575803031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e52e10f6717e88b6de627c0fbeeb14c285e74cd6724ea67f782badc35230677
Date: Mon, 18 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702904296
