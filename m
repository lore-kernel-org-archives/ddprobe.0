Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8E2C12E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EDC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687957988;
	bh=BoCQaMLZAEuJCvesG2Ty7L36uTQm4tHkxPwroriiJ9g=;
	h=To:Subject:From:Date:From;
	b=EXTNB2BHchRgpWytiAnitpWdd4TneojcU361ZJLIXwu83ixfpJspkP7I6c+ua5fGq
	 zAG+23WH/Su0BQ31hkJbomuQhWDKYa4DWGFfPg+D6aJ8mwnti4MYg/MOftxVU8I8RV
	 62gF7WKp7vLvxz2Q8ZWFfOCXhOP0zYl0wGpddaHmMd4jpfZWwTHNcEOTgIha4r0v8V
	 S4hA6sBHGvoSICmBTZ9glDC4jTujueSHMGYnELpmgJy3HLaODzmCA32lebyp9Tyhgd
	 vjQ6JSq6qtVOW9YZ5Kubv7cBcE5l6IkVOAXm43DJkfviQ1cHYYM5E5DcC8zlmOt+rh
	 GUpMAIxd0E+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5FCEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795798869.28946.15201646358630281569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c949c3a0ab66742aa4d5a6deae1a6bad09bbfb2c49b1166f96ff7de298ad435e
Date: Wed, 28 Jun 2023 13:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687957988
