Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEAA2F50
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiVVxuwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92101C433A9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699595896;
	bh=fo6DjrXS0SXvFW/6L2wiIWWjirQaYTzKTBEGBk98HXA=;
	h=To:Subject:From:Date:From;
	b=jiVVxuwJTPRY5JrXpWa50wKOQEADMBpsaMoGcRGQUFUbZ7DNSPhXm2yNkdHwiU4g/
	 cX06vTyyJyaf9+ZBu6qr4UZHr8M6XQHuo1IaEDXkW2GOEG7Q6fcCFsOyUjX1RYa3Mf
	 qFdSBUS7JJrncOHDJ7FCML5b+uMHh/iUKfWc2Aq8XAaHNJAULjVfE9uqeqaiNLRl3+
	 2Ua6SXjYIreu0rfTfcLs8jH08PDjLWGIDX2NIEgpTjau0hINXEPMrK5d3edKxGQEvq
	 g9QUZs5bsoSkopyYqkNhq/3BH1nvlT3kGFCw1jJHTPDKc+NWh25oUImYjE5LRlbpcN
	 1ph9/lPNQkFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC3CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169959589643.10308.2263774330747038108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7476d7c56a1ed94c1d7626af1570ab91c02e0734302e6bdeb4c58b8c77e11c41
Date: Fri, 10 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699595896
