Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5807712F585
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790992834; cv=none; b=aTYLI8TkV1FB7YQVEsr30bWEIKZ5tYutpR6nqLh0Ke+LEjvPbzqUx/iMqD0sq42kLDELbx8YcWJQQY0S+h4gMMrEdDpr2ROgeTmXh3yycRkpt50XsELpHMCpESmiOVkw0vj4V8CQ2tmTL9jvoTSp7zEuK9St+5LHPheDU3qAKf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790992834; c=relaxed/simple;
	bh=xWt1G/HssEwfHRqUy+yjP0+ThFskd8xQI0lRognVAzg=;
	h=To:Subject:From:Message-Id:Date; b=X1thV/zwty4jFzZbB71tCVsfYIAUspNY9iK4y5EOB4fYkC7pRcV8VkpwSiTwxRVsRWde/abYU4X7U+g9tpThDFyp6A21yfT4YneZFYwHQPQBsl1lxJRBALz1mFZYKWEcv7t8ZSFy2EcqmyIe4a8s9tASiqbQM2vXFkc3Zt9af9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqtXCdG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqtXCdG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC914C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790992833;
	bh=xWt1G/HssEwfHRqUy+yjP0+ThFskd8xQI0lRognVAzg=;
	h=To:Subject:From:Date:From;
	b=IqtXCdG2BznIc8GEqrjO3SuxzYW+ibUVwgktnze5g6G2ZaG2V1DwFiGDa0/k+DChn
	 NPA/cE8QqHkTajAUKCahfrqEglo0UTxNi2zadRvVMo2AwNf+4Cj/dy4BWfL6M/ugET
	 +ScDP65EhdOS3eoUfjDsFHDc3+9uRhXL8+zHmLHgxlmzZ+mHBOkxtff2O+qEOKpIUe
	 cgafcpG9AUe9e86qCILYUkOLHPhDtxn8FRGMPiKUbxODR82c33aLH68Hclzzq90w5K
	 g+G3rTnZTimPlMnhbsb1LqR7EumpWhVzW4OmMF4vQNIGx9q8lF+5BTYoNuGqBgXUXb
	 Fe6URFFqGb/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C8CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099283368.16108.13231068585478970579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5e045d10f7b5c84a009657d4e8cb6fe6836d8e65b565d4bf7e3f817ec67d45
Date: Sat, 03 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790992833
