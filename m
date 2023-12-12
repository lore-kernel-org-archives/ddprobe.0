Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14846DD02
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAlP0aJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D608C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702388896;
	bh=GMIFHVl6MJ+z9c3f3U81xXtovgxY5TR8iuzdA2zZUTA=;
	h=To:Subject:From:Date:From;
	b=WAlP0aJrSFCRax6wDBg69ezDgJj2vkwlSecb1qmQSOuPtT3Q1k+3SRFfsJ/nFJzXi
	 ndwcmRqz3fZ05N2bA+9pov5K32I/LGDiXqvpbXYwXRyeO3h60Ub34633eBeD09/Y3S
	 XNxlQwo22IYsGHs58mW2RT7lpL+4Vc0oShnIbGZAFa87+w20QTIrq4d6HYfx3INOs/
	 RbMtG9FdyCjTO2sZzZpaROB6/gtBNVOH01tshLpYS0SXgcDut2KV1x89FYQKGIehcd
	 ZuNeXWFwuj+APP2g5PszwUzh6FgRLIZI9wREfdh5ExlRn/QbJw+7dM7CObVxN6k4nm
	 gDKZ+sZS8M9ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645D8C4167B
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170238889640.2170.2363295848146008365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b504244879080178417ff2c439caa05cf100a1cc4c3360bb372a936c7cd747
Date: Tue, 12 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702388896
