Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF50659
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0ABC433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677480366;
	bh=Ft00IcnOdsbuXKvmdTRb9LqPDRgXSs0b6DSOJwzDZsM=;
	h=To:Subject:From:Date:From;
	b=hsXRoYKz3uEbGqHYEZL6RSbKdZ3PPXHFywhj+QOCLITvUMpDCu/OuV5N+XQC1D9ka
	 i5+SeataOZ0mlENAjX9non2sHjO/NNKJnSqzsfnkeoyn0vMa2QU7s9tEh/NgidM8Zt
	 XFaHY08PAK6PAEH6l2jVS3uidiC0veJBiZRUNm2/o7n7cITvsjB3SjuymZ+hBCdvxp
	 jjXRYdGk7mASDkFkPOYEUR3blcImEoTisk2X37bfrBprMWuwNZAXZkqOfzTnq+n5oh
	 37WVsJmBMVWaQZHzozwleQfA6z6FGW7yTtuRm2d6GgLGKfMolsAhtJwSRTEnv4TQVD
	 CDwCIMftmR0jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCEAC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167748036584.17956.12262858350362681682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5efa4333727b3a2f5a265b7624e635b71a2ea5f628bc32e287a2c56c6a6414
Date: Mon, 27 Feb 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677480365
