Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09752F33
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3FAC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663845053;
	bh=J20gob4HXfbGLIslF5MrpwfWKtM6YM2+bqZxYl0Jm/U=;
	h=To:Subject:From:Date:From;
	b=dq922+692m4uD5kCeiRippfMVzJgkUcrzzmSRjTyDrfy62lml5UbHvzs1EtiCH/Ps
	 H2PlL8cbhZj/teXSGFARIfQ4avrvL74sN2wf6MXe4NSQ3+oVsW/WuU5Pr5z/u3jqB3
	 PcpYIahgvNmn/JPxSC4ia3ZRnkkqoiweW2POWhkMnvTUe1UgfNdDt6UKtl50uvqjs8
	 tbv6MvhsmRrIICzl/UKq4nCZEVjOBIUTvormESSrZkvdswpyEa/oMvTdj056su9g45
	 TdDXHDGpGp8WhRfm/XDB+EXJrD8DXZNjGE4wSmBolJOYyf3qYQStQ/o1kHH0x615FK
	 v/Xa0E4k6nnfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54067C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384505333.29301.9989506470885248531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ec70425b19c8fa0d5a76cd428a4398173696d58931191edce713d8b31cb40d
Date: Thu, 22 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663845053
