Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BE87F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690FDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664278253;
	bh=f5a+e6eER96Z7fOrW6lTk6vU+qhNUeHMICsKVr7CMEE=;
	h=To:Subject:From:Date:From;
	b=hWsKug5HpSbvVgjQLKMzqoPpvfRrYclpsdaJxz6hnaii0xbryZgU9UWdletProf3a
	 xrKPlueRoN9SptB4jmfBIdpLU7UviLx8wT0w2ca8v9YNg9/C1AVo1g9ARdFiVhWhq5
	 dUHUuUJbrseLv6niWBiWMpJ8AYnRQQn9Rh2hWVFd/xFtufi6NqQk03GzRJ7z83E1sn
	 2/wpq2MuX90tplErySJ7skzqWzkxNVLPYy6zJQ1EUmdqT6vGagreFZeetMd6j1dSnq
	 EDe7rSqD3cZ+Onj1/znTrWMXhjG/T6vwN2bA8cG5vD/myqa0GXYvFaTG28zh291sw4
	 PRQlGGbQ0pKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7FBC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427825331.32001.18236540704917525322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb36c734f3b3f81ba645625b246a55bc4ded2e835895ebc0421657a2f677dc6
Date: Tue, 27 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664278253
