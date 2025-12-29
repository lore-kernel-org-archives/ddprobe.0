Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309B92FC007
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767052434; cv=none; b=TLtCq600eqiOKSmJzFpWxnvZvvh0LB9A3y4nNW6dulGnOXnAIXNq+3C3jTgnBJ9hJucwO3MbGpl9Pli//wBc+39rq5Vw7Ljqhh2QYfvlCkAUE1zR1f+p0J2e7fIYTWn2E+ApKMHyQunVraekYhLFQDrvIfVXJjiWGKAK48wgl0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767052434; c=relaxed/simple;
	bh=qnt8bSGYbSZG9Ul1jIWNgAHYWK9QhnxfQ+8vrvjkT80=;
	h=To:Subject:From:Message-Id:Date; b=a8IuO2d+cmsmDNXTSPN7OXoICgkMA53IX86OuznPYElOudo/yT4DX4W1HDWf/2UcDGywTZOFuOoMkC0wJ1cCJp//tycRPsfDR2npMwCMQZkr2JxjM5SeJ39Kv2dYqYFEZ53UKnoj0DigPHE/oPAv8DXwSZHhj4VhvvTVpZ9Ch34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GltpVWkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GltpVWkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1617C116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767052433;
	bh=qnt8bSGYbSZG9Ul1jIWNgAHYWK9QhnxfQ+8vrvjkT80=;
	h=To:Subject:From:Date:From;
	b=GltpVWkDx++C+QGzWfnh1h3Y6Dc5fQEeoQsdzjPxebM3bgS0biw0LrqjvNVdnXxUf
	 KXhDFl/3lMJXKgZ4OWrhaQhppHKRnUYBAcl5nGwufVUFx+DAvUT/sTGqtEkkKgJmBw
	 j/SZcdvPfX+YRLKu1d6TjdbJdhLkl7mBwcqAcl/yf6oDPSCwNUI9hkphrzPT0xW9uC
	 4NzAcLiuZW5pUxfAmbokzVhH7OFFJlcjDmXFvlL/qbuEMAaUoLDs9X/NJkVE93JFJZ
	 IOv5Q6cfRLeNygePNREu1ulb7qSPTzW+SZ82/4mvA2S7C27zwZbTlaEKCsW6N6/vD/
	 MQWJf1TxUSROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95AE92FE3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705243358.25510.3988081519531312930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acaae360e39ed298e9c4649a903250a152fd861a5312bd8196bca6caad5ce70
Date: Mon, 29 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767052433
