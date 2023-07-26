Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E09197
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE275C433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690330328;
	bh=lzqEscHXWR92FSMkmeym9LsV/83HXR9pEVsKwb+IR+w=;
	h=To:Subject:From:Date:From;
	b=IoKl392O0okj8NvLQnUnNJ9xUsZbrGxIYBVOtrDfM/ktVUmc8KJCUL/GrEQOJtaTp
	 Ciidq2m+kbrQk7Km3vwC043/ExK+jI2ACPImoXd9h9CRoM6D1ckw77OOTVMVUQX5+o
	 V970bZQuFKKTNg2F3MXqG5SO9pGcGO2RofhsGQDFPZk6Uqhk1ox96SW0UNTHTdTOTE
	 S//9e71B0ewr396CHsK6U3ElnQDeYuq21fjqMrRdUiMlNsu4gLi6ouvK7SegVZuSBq
	 1WfoT6J6S9pIwjZYFN9D0AkO31xaqcsHnrcUhYHniOwlBfR/xAQbs3Gz5+aAiP4WNw
	 Hnn48WzFE9jsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF7EB64DD
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169033032870.24064.15968786381718495309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cf9fbfb7a5d000cdeab56354e485aecd8bc75fd663e4a33a9ae1810f753da6
Date: Wed, 26 Jul 2023 00:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690330328
