Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EB03C17
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BDDBC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662327653;
	bh=2xzW5eQZShkqIL4srxWMqmNHBKZxRF3+mRoinWJdeQI=;
	h=To:Subject:From:Date:From;
	b=XK0eo8BrnX1igZFxllKWJRGjNqDUbqsl2a+c0JIolunF23RjggKhQuTEtct1Z5K56
	 6cdrOiPUjnLQWIJjTb38H3X5NzJI2IM9yndDLXpJWfX1DFURiHvQ7QAfhEbNzwBD45
	 DvkWFiYv5zBz/xQRhlO+r9HtDQSdss9yILUmMKY55C3bca/MLSu/vkBzzvsxN6fzfk
	 8jdtFsEH5Qf7SblJZDn8Dt3yT5h+gCgZbDuMPN81of1EXRrK3+1mhiePWzg3q00ozt
	 iAd56UH7jELhKPZaHaQprV4GFFPXyU2ZuvQ+35n7klbZEtyACG3oZjX2JJH9AhWbYi
	 o9r4MIMNtoHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7D9C6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232765331.5342.2522577874772580539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97837d805bc725d363365327b6b781bb52e7230e711da8cd43d918bb8be6e98
Date: Sun, 04 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662327653
