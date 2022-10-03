Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC48A7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6566BC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664831453;
	bh=+m9vq4CHpOVDo3vCsTfZo4SF9MucQU9TGQlG+s+F8LE=;
	h=To:Subject:From:Date:From;
	b=Hdr0LkcnUqP+ukMR7C7jwSoMCo2B9oR38M54OsL91hFXr8DPRkiHOUJJ7fyZ3agj7
	 8XO6xpz3GCWmn5zdrKLXxOLDhS25Q1Ic4yWQw+YifW44FwhXKqt6aAlZ7VzSDPQKue
	 RaJ8Nd4x9pdhBLNSZy+GM3uOF9Ey3aPE4qdjCskNGT6bSRZuunUqwmITv+u5EO90FZ
	 QUkTPSOqX8PsjELKD9ymO8SciOBHLXoQQOlvwTYdROB2MpPy1+vY3pF+EymYT5foeo
	 RXhLoO91bg5Ap9fBh4TZba8tvjaJfzrfD99z9hVinjhzu590CgfGNUPem1I71Doq9W
	 603473YEPWGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBCCC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166483145331.32268.14027231347735606584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fcbac0a0cc326906cff5642817c3e09415280e1bb10c96e2138b7e29a1eaf1
Date: Mon, 03 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664831453
