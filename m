Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3D233D85
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760513994; cv=none; b=AE7nJNfiBsXb7DNjs0m0X/ER7A+jMNJGP7TkG8s9NOgVuaawjZ1BJ0LVT9MNhNRnT0kOm5ZzTXLJ6tVxNOxrwmAcxy8y+WkfBQWsg/wpTbJOakAWyT4HvV2w7gcWmsPxX4SXMtS7HCYB0RFwstxKmwlhWA9xaCReYFJkH5Ys8+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760513994; c=relaxed/simple;
	bh=/qjJ8lEY9B+5NvpQuRkmqNiNn+m6BQFWTA6PDf4cG+A=;
	h=To:Subject:From:Message-Id:Date; b=lgTtJgvRUuAQrZK3E4tWfZXXiDWjyveEiR1IlPWfwtDySUdWPBKWgnhxSnoEC/uKJoTiaz8uyeLYvm2RUeE4Tcm1jXEmPsYw1D8BuHVtx22Wdh0NZYy3rPbv3nlN8YgFLU4kRGcP+IB9mv50UsUJRyHMw6kxEXHmrZoyWr/RnGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE5IO7j5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE5IO7j5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2BCC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760513993;
	bh=/qjJ8lEY9B+5NvpQuRkmqNiNn+m6BQFWTA6PDf4cG+A=;
	h=To:Subject:From:Date:From;
	b=LE5IO7j55taw9fx74sdzDSuhvuqgqdmDzHzYsYTmucbP/0DTNC3RERXObah3KVMbs
	 i1vnTpwKKsqSEy6DNdEvvFjuq0USvNRivx1T+/rMbO86ks2ddskpWlaohANw5DNHxg
	 g/bmkQdQusLS62KzV2YGt8hBFUfcJ9T9xpjoVAh5m06JQZC7wn0aB4ofiFNvXCmOGq
	 vPJwCECUW+6XxvRxgxOu5PKg7VAzs/45aCtTrEYZffddWFAzvmQNtpgvs6EpBxabLR
	 B9Sfkod5Uuq7GTg3lOJkbhz+gklCWHg8uq9CkGsIcu+1jaMz4pw2voG5VZS6kcnS31
	 pIHoCm21bm5Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908AECCD190
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051399358.8072.1871685290831714628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4700bc217b90d02e17ab9c23723934f958cd8862dd4d90753399861a6ab02e5
Date: Wed, 15 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760513993
