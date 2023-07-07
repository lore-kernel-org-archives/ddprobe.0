Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4921876
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E69C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688702228;
	bh=9uOt8gP7IkoF9PWlBByOV0suvLf1g7B2Gf2eryC+c0c=;
	h=To:Subject:From:Date:From;
	b=VS3Y+BmwfJcmHTIqvY26nolh9pSFYBKN9VEmbbusCdBRlaZvPqLE2VB4Uz0GvMz78
	 GeYSvrSnsSOzD0+3Bb6KCeQqgvvmztb7hs+GM7kZXLtOpMZ6OvE/qkPLAIaTBIP8Pj
	 lUi2egeqAmikh7JRAQczWQShB1KYwvR2btqjNlJxa4/jAURREpRr5VLSKhTSiYcuWV
	 X/Zfs+BrgpOvYG4bhxZvuyzRsWj+ykXu15Ft+me8geSdhzlQHn7hp7qV7R4Yzzy/0E
	 dqnWNSy5uoD81J9QAcJ2C+jXupjqZXKTCxmk2A295scLTxfyD7e9thvNybDNKKjMNP
	 eJt6j7QUf7ZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A781AEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870222867.27171.3968359152943762022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b04dd009ff359abf93f80300467dd64ad59024caeba27201d8d0288e43a07b
Date: Fri, 07 Jul 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688702228
