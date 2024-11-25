Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ED645003
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732518354; cv=none; b=elEa8DWF+lX+5gkt2pW0MNI6qrXLUMLRQW6D9mT6EDU3gl8mIvgF54jJvaCMNYiEa89hcExitOnUZO90YDt4KtbuGQg4Jw/mf5e3jxUejpnF9239qRrU9u98zMHKWvmfKmDjmSQ/oos75ER9RxCdqwmTuIOaZbyKw6G9QxeqOf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732518354; c=relaxed/simple;
	bh=9hAjzAZ75BU9OrOe5v9ZgfGbSYz5+9+iXwuhroRzGig=;
	h=To:Subject:From:Message-Id:Date; b=luEiSq70w+u1OAZOOuEnVd8Mc/pESUsI0lTC3gvPafSIbeuq4i3hlnuL2FU19dD/qhu6JSgqoj5Zi8ZlwEa638P0ez67aorShGDrEyg7xSuKMGMa6+1rMsgKyKEKI5CN6AALOvZNn7yccDP6Cntj1ayNA/zJa37CyKCgEN+9Vzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOaX3HKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOaX3HKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF270C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732518353;
	bh=9hAjzAZ75BU9OrOe5v9ZgfGbSYz5+9+iXwuhroRzGig=;
	h=To:Subject:From:Date:From;
	b=jOaX3HKOvreE82nnSxm2hqi7nIKN8H+LkdvpBfQl3bkWvonu7WQF5R7kQGf1a8rCw
	 N58eTYrSeNDNG13hWxlwGg6SPDarmkQUd5cP8Ub+nib3MqmKR7foGLd1MsazHMhyY3
	 EW/t1xcZhYcYKvs2btQMS/yEkfKH7MjI1nDcPJzrfKP/gGwS05jbozw0p5BNM18Wmt
	 rEnTcs1ZtJ0LXdE3N6f3wb+y90fys+T7EnPp3Ep1bYlUcJLieTWBcEPAYBXNGreKQ0
	 C1orR8/idpgv8kEa7Khb1mDPWjhUumbAFy7f7pW2vj3sGQF7cIz1Fy69kNwBzjnVZL
	 ORb6wK0SPzfzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C81ED3B7DD
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173251835363.3168.789380375353887176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbb1ac809701c8479e6d7a04620581721b71080e967afaa7e97ed0037432f7f
Date: Mon, 25 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732518353
