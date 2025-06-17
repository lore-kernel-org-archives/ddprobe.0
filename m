Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20085295536
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750201795; cv=none; b=NxYWw+v3bHtCvUowis3QF/ur7zksxi0C5V7ZNDPyGdJRvMzpBgmBuuabidyCeRlDLFbyH1rngIiPUhzCCUd8jLlevEqIAdt2mSqsWSYJEk5KRAWyVO1y9Qg3f0IbzNbLtOmPToAqBii7fSIqJ9cB0X1/mNqH7ygsLmiTqaFl/Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750201795; c=relaxed/simple;
	bh=G/OWRLkIHqfoU9sDfwW4RTkdFDjwBta55oN/LaIafzo=;
	h=To:Subject:From:Message-Id:Date; b=Fty7bnwvQjnwHcEhbY9Sx3k6D++yxmgRFajVQnzCm2IPQi/kdbFxvcJJluGpXhiPjZfZDNVJcLVdX7zrKszFtwpIzGicjHX0qOWX6nfjm9btT8jjCkPx1O/hxq1x/UiHM2azzB+qcKM8Mm1kUm+nTE/qL9blBAGqkbYfxk9eD3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xqy4I7i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xqy4I7i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A9C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750201793;
	bh=G/OWRLkIHqfoU9sDfwW4RTkdFDjwBta55oN/LaIafzo=;
	h=To:Subject:From:Date:From;
	b=Xqy4I7i7nC77yqaMgFQb/Xftq/7Ou2sEHEVxz8rcdAkNec5Aq2ToLY4NR0pdcWMZn
	 tAlpq8je7tlXc0+ugeZbGGNJtXINi5H9A8PiM+pvVf5m1nUtA6K/G6ZDla4OZYz2zg
	 brPUyhGp52enTMfGgx8XztsPRjrePhYAb9DEONFGS/sxBvlnnFsp6N24fsd71WLl2I
	 1ijj5AxFx3MW3Q3Uw+96HB7CLcu/pKT+hPYRcFcdNLMW2KWi2A1d/rDp1gsxb+tDzT
	 08Du/+V4bkaHYoVo23iDC12PCCACWtRlXti7M7cGFbKBoMQBHbvuymSohfvIm6ebbu
	 64Y9jnk+rrmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE0C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020179357.22942.11191245451126167179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859c95a931d74132c2ddfc842ab14f79c8668fa89465675e5cc9972547106471
Date: Tue, 17 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750201793
