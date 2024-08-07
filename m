Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300AD84DF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723052754; cv=none; b=jvjnxMqiRjutMSfHEESdNZA3Jl4i7ggbn0yald/2j28f8AkJwYfJc4EIWyEcz63w99jkmoITngfuFzetXs0haGxogsE0tXrcRKV5ntvxAYxnOOMgyoNdw8Tb3h9Lqp9qWnE9MxzIkwNZwauw7VBzt+kNjLzIRynhGg8m1JXEfIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723052754; c=relaxed/simple;
	bh=KxDe7xvtmmzqAg9C9UVDg3g/TnNp6jV6qRxfuO6BIkk=;
	h=To:Subject:From:Message-Id:Date; b=tr4BnEJvKQerBSGoFgQLLgitqmTG5/Mr5cAQFZJNPEd0KY2WprgdXuijpFZk04kfMHTxh9+lsUEWov6PbSs6r9s+WcMa0IkVxxrTMbjQKB/9a8wgKxvREXOiiZbjfxTVdVOCtEWzKWfYRc/PnkBx4Ape0GFC5GMrqxpg+c98wGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8JPOXVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8JPOXVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E01C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723052753;
	bh=KxDe7xvtmmzqAg9C9UVDg3g/TnNp6jV6qRxfuO6BIkk=;
	h=To:Subject:From:Date:From;
	b=M8JPOXVrgRZq0B0+Uq+1pQDvvilUw8yq14OUYCeDkIKcTIIdkwA8MuOhzpKAZuL8a
	 7QkWdRXBYK92Hyi5pXTKdgrVOzjRlsqkoDdDttZVLyV5gDPC0lpLl4QKqprjTV3ju2
	 xbC5t7tkGI6H1oozpXh6j6oAKluNm98mlX2IzHmh3I4rNRtz5TtwcGBoOABOMWT9YU
	 c+3vIE03h0GyviTBjt4xSgmVri5csPQ+6LtPUuY8+9lQaNsnfQ3uJUS3HEANGGNI11
	 +HT3cA5/mbX6kTVw1KLan961Tcwy9x6ZYsHEZbndrgDdc/Tsmfq2zxLMjzKgOiTM5U
	 lNxefILNQQaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26E6C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305275362.2281.14277527874039833044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e086a26604d7333d7dc3acc4177dbcc3770b1b5d8d3cf7bfbd8f24a45b67ba30
Date: Wed, 07 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723052753
