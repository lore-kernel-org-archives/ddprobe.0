Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBF73BB51
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0Y0JY6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F76DC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704824296;
	bh=WPtVFSSf7nFFfAyVGkAc9ktYAkWWYNsrk/iBw0lhXhQ=;
	h=To:Subject:From:Date:From;
	b=V0Y0JY6LNWWqhYZgqkeT7/fvQ+ySA5UhDGI4KD9dCaH4esOTkI2s5talkinPtDvyz
	 0LR7oBPAybeMEyf9RUVxdaxXlTKWO0bKcfmOp2QbFiRdFEb4j3YST5r/dUb/kG6DYL
	 MF+B744zsO5l+jYeL2mJNSOAQsTcVm09bLexHjoOyyAw1fO5wpk6S8DrbzjlLP0EIz
	 bSlxc9PNBES0ic+VZe9MwlTBIOCyE/2hTyjB+c1giQMY2AkmCI04F3wo3QgYiGcLtj
	 yv7D1sB5HB7R9T7ejqclTzOi8Se9MhE2gfVBlhYeuJWBRlYKeDYo8a1NCZUkNJxJ4D
	 Dj0Qs8eXyqyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F651C47079
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170482429644.31700.10647954811481486646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570ca6b521e5c68f0d1f69f9f2ee7e3710e73e7d0afd453f5fa2fcca8710db6a
Date: Tue, 09 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704824296
