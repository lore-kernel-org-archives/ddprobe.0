Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0DB7E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B35C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 02:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676859485;
	bh=Jrs3zTS0kCR+EkunLuSZEUXUWT9iQY6ReYVfkvk/NiI=;
	h=To:Subject:From:Date:From;
	b=ktpM9zwyvHKad9q4FiQmKG92RlIBaapLeRz+rRNzh0+4tMMH0/B6uWn+AUf0BEHqG
	 TCB0fJfzhRRQcc8l07Ali7zBoOZzTJOWQr5npPygBaqfeEb68E5Ft4iH3G/N4JF5bu
	 MMH5OUDfYpOF5K/NvinCjSbPBtxSF/SinJqXjwWti9piTewRQZ3De4sgIZUm0hfsQ2
	 qfrvY5rKlxs0jz91x0+9MT9y5jfB31Y6cK75NIbXLIyOW8kN0L3CG6nqVqo6fJ7M8/
	 AGUnhfRs5+5R+jsfg6eGJOi7sJVovIM0Hu5ENILuQdRgFJ40CsM7yc3H8VB9cVG7E9
	 23h5UVni6YLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE51C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 02:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167685948575.30421.17426902844333024582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e45a1eca90fc2e7efa108b5567a93ebe46ba40187f7b97b3013ae15c09b8b2
Date: Mon, 20 Feb 2023 02:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676859485
