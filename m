Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7200B361
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju+6LLip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66BBC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696906028;
	bh=+2Os+pre6xAyV1khIdjyIpcvzbCgz+R/jcxr8Z2PXlU=;
	h=To:Subject:From:Date:From;
	b=ju+6LLipxPSCVwOtXtDGtnJVU7KGbROxmZf98vP6/I5/Z5D9Xa8G2CIkIMRwc9elw
	 uiYr1JuzTaQfq2nnsGlsptD/mULQcgN1CA8YFMDTbKrciIaBJeMml9tCEM52xZDimm
	 Y2NZkhmOX7cCiR5hNgkVkCs1CdzLrJahYtM0oatWvjUZlzrK51mjxrRNksbesLYFMr
	 qoMdizf+2N3LG19GryW9AzmBM+iTnV8439aah9/3+v+epCf6H158EvOSWWzvlQ3DO6
	 w59tRauqcWGhkaD5/kLtzA5CQZlUxvXekJqE+GlH3F1tz5y3qQ49gK2cJCnxUuAdHv
	 tscbtp8P5LPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61F0CD68E3
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690602867.8883.17764229069083290096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22277bc5170c88f0507149c0f645889936f2ce2f7d02e1a23c4295cf01b8e76f
Date: Tue, 10 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696906028
