Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FB179C4
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Brr1Oieo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9564EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697780896;
	bh=RkHcKZym5uq7uLG8Dys6jB+RSnulsk3IJltVXgeBD9I=;
	h=To:Subject:From:Date:From;
	b=Brr1Oieo132qIZp5VPtW3PEPwjc2SLZbK3jTphJExLVU9SBCeqeLusBpy4pAhP89k
	 QSafh+U/oEOjcDQn/onz1wQpHQVIZf5gBJ1zuWFDCXihbVerr0oUlzkDz7qgNYeEdk
	 88GQUOi+xeulKMyg8rQsJVviNh1FnKC5ODfGCfSwGWz+hzEeOumTUBj91IQF/VYbSv
	 Z+F4BFLoJFq8suvn9k1M4Xek8zVfTuppUjnA5WAxneXUtYiE+4j4CgCjt47kiS75oD
	 NetKFTo9/zLyn7jPHFADfoMSDiEuXibECKFJSaoQJAHIhBfxESQ6Txv9CKFbS3XWBi
	 MH4+zLZFqWZbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F439CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778089644.25254.2915509227165105232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af70261b715cb922684a82c4cb5addfc28c58f787beb017778f6b2a02970430
Date: Fri, 20 Oct 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697780896
