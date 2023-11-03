Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9AC15ACA
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kufDoUap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8EBC433C8
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699015096;
	bh=DyIsupA7JcUQwOlKE8HzLQHJJMlCj3U+JPagq/mkAw8=;
	h=To:Subject:From:Date:From;
	b=kufDoUap5X460MNQNsTEY9s3ou06mfYDRH88p73rEihBYWCZJIM3EzQpQ0ZIxlWQV
	 ZpwZrIZxscrYdEvmiSwxrrCmO8utrEFccT6wQdcC2hJlyEeLKpq81M+tp+ahuFrOYx
	 58ZGoQ/Yqod7O0RqFx1n8BZWhQ+2boOK62FFnMybxsmj9WnIKpq0zr3XXtez1qU9rr
	 SZx1WjEZ+1a4VB4MR1g3qd3I+uPoOa4rnTdlIfjNJALIz6TMlx+751eJGBtzpT2gql
	 FxDYfBAobTItgRjq1FoWBp3x+9W+jV+hhv/1bLSIPnCEQmO3nKZARihb8i3NFhbhr4
	 Pkw6IjqmA5ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7002BC4167B
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901509644.20193.8874396497417348543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7790cf1ef8829035d4f63184b7eb1cd79b672c55f945b52239872534c50f83a0
Date: Fri, 03 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699015096
