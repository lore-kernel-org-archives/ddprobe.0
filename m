Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B09E1640A
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaMadZH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA63C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701159496;
	bh=DOWCaZHLcdgtH8v+/UeVo1uQ0gXyIEYgq/NWCVIuE6o=;
	h=To:Subject:From:Date:From;
	b=JaMadZH0wPqh/LJjP3a+mx9DSx2bL4vTSN9ZwQ5qjDCL+o9P3u9PYD6323nZFnq1p
	 DzQracUY4vo1fWMZtHKfks7gV9m8pZHbmTttha4Ppkt7ccf7HNliylhkDrGG5DTAaL
	 vn+fHIJk8MreHC0Uo8kB9qeZBJJFm9CXQBNJhnpnTY81iiRY99hufICSq9YYgimx7p
	 hZmsTfqnEWYHOOi9s/fVcBa/bpsFtclPQRynfP09IeyJpmctbxrzDKNwKYEi+IaG9h
	 XdWMhNbTFXfB0UTa+5+tjt7DYBg53B84Ewb3qR8UfR6OLjJG2nHymRiwuId5QO3Yuo
	 hJe+SlDBul/yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E74C07E98
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170115949640.31831.5404833511484370148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ddbb30458d54b4ed85143171fbb436f029e0a869009fbd0dc15d8bccbf89330
Date: Tue, 28 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701159496
