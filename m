Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518D7EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9F3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678657025;
	bh=8GN6RpEtDJs4Xg+OniICAzS06+1q3XIoOe0wxrPjFV0=;
	h=To:Subject:From:Date:From;
	b=XB9qUXSFHDMXSeHho/g1I2OTdxOlEqML3ExVcSD6ne9+fr2DeVhJrGcW31EvSu+VW
	 QO+71BnZrqXM0VrEm2hJ54nJUHgI7uagYdMGq6RBLSbwzUhst+BmVc5XzrnzkLuvOR
	 zx+SOyEDwohc6YXV+CFOijCKVaDTHFx2lM14AfO0WvlLc0mGhn5HaZu/gMTExDgx7F
	 +12YDvyCNtAjtFojHpee2mbw/1KlkWwkpEIQ48Hi2t9aiA780jjGTFlSyXT1O+RUap
	 wgSHn9JIbXkW+RwruVaQ2EUbbIKZiU9vuD5VHeDbisEnueC4kw8H/0iGPY8NxR2TF0
	 PGuUipOyBtCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECA5C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865702574.23712.6061641720253804698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8b754c7c46c713f64826a24628096b34db8c6c2657263e40fda06d0fe55cc0
Date: Sun, 12 Mar 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678657025
