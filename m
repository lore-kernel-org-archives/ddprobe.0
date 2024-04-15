Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48867156987
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713215963; cv=none; b=b3S+nA0V+pfWB8WAS6VnCq9kKMQLB5WhQaZUb1Oo9Ls7382tF4hae03bQMQRcj8Ms3SQbqPrrn2PxIPjEleF8WiOdVprIE/3nqk9xNzJkUPMYTmcKen15Neue1rwBacNqp4qqUqgrGhSWRNBW0MzcmAe8zfuFiYPh0StFdXbXCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713215963; c=relaxed/simple;
	bh=ZF0Qva97/lZBjoNzHkDHdVrZ7eh7wkg7AsYBJJsAqco=;
	h=To:Subject:From:Message-Id:Date; b=JLcObHafjidYVUowsx9Z6xAz6BeDhOAJfF9H/peRrfpC1Q+o5NX9qY2r2XzCH6W+OHjWTn3nYITP8IbLEWEO6NjOhzm0gtmvisQ73qyyD/KPsFbDav9NDcLlKefVyMXKwO4YYhJmW/vMdHeYQWwQnwFwDDY9c38Y6+IA7A8njZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM8lnWh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM8lnWh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85B5C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713215962;
	bh=ZF0Qva97/lZBjoNzHkDHdVrZ7eh7wkg7AsYBJJsAqco=;
	h=To:Subject:From:Date:From;
	b=UM8lnWh3fHemK5O2jw7YIDxdjTb8Y8cQjB+e7fSr4uZk5+5fqY8p8+wnOp+YD06OK
	 Aojfzk6wIbQgKOx4e4xsN1ZssKX4sAMuajaDTbTHK2uB/wrz7853bkZoJlt77Qge7l
	 5Pjw/y2eybvs5R1iYP8X9LmJLECXDoQGwswcQDQj4tAHpeTz/OpgRafjWVCLlfj5i0
	 a2ah91mDSpWzwaw+ojDMvv8Jne3JkM4LTNiVZ5lYDopjkDFl2VdNQcIDPZVZwjPKZD
	 TPq2Dj8vhAeRiztcWkpnfG8FxJUqFTHNzYloWTDQ49nZ7EX7xvYdVKkI2UyCOXm87W
	 9TyI9k3x1nwGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01D1C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 21:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321596277.4859.14761244423671799567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9f401a1e73f52cdcebcc24cf0621dc932424f859814848c2db5daa49614070
Date: Mon, 15 Apr 2024 21:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713215962
