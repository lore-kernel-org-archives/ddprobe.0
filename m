Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320CF10F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 11:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3993C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 11:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674561185;
	bh=cgWx+8c0aPuW8daRjPSF+7UHwtW5w8lxcnHrRwAn5js=;
	h=To:Subject:From:Date:From;
	b=PMdKRkTVltToseTuQwhWFmjA6tiIOqQp46DRnMilpxlZYLP4rxKvoPUB057t6RwGL
	 HMFeFD21hldcsW9VY77z5lTY0VWugrChWTy1kqXQHpHRccJJvutoUrG6S8kq+3hie9
	 fvXJTxZDrm7nirazyGYfwQZrZO8BXTixPG51lWDkspOavYsX9mpySWWsuwewTB7M3q
	 V0+ew/K5xYsNf2GVchRTUM82aWffmgwX4aI64eDD5lEhJB6eEa1Af6gLAZpeYT7yMZ
	 ER1JnwyoZ4Wur8aln4HkB0EOgpTsjMLLkTXNGNvdzsUeg7O5H6gvhM4KQLahTe3H4U
	 7961ubXQaT5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C5EC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 11:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456118572.14615.6686879924046956269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbca2c0b2baa290b163db9ae75e79e510c5b667e654c8db3fe28ac85f8fe2a85
Date: Tue, 24 Jan 2023 11:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674561185
