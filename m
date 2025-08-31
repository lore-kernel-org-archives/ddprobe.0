Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14892258EF6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756641594; cv=none; b=bf1Ml1/a1yg1VVFdxBJRGIbLl+DYAhZ//5pLO55gJ/v8qT62Z+DEMES+Ci7+gW8OWLv5mnEKJRkHtO8aT1gCK7p2/tW5MHcgpDmEq2in9Z4WwZyeeqI7aL2Q0Mgxd2mT7ehdDnEVPMY/10hRF3mPBOYidqFlqNbv8XeNYHyO1lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756641594; c=relaxed/simple;
	bh=nVwDf3jL7EUEE+e8YGZvUeLtwI2UWlxCK9BVxdmdzlQ=;
	h=To:Subject:From:Message-Id:Date; b=ZvTkNd5b2ly3f1p769e10lVisRjhCs9MTH9mdf+CIFZ7WRaM8kVrEExR+HGJRaC2uT5HxRQwItG6rF89EVxOZXF4JXm39vD7C6mPbDRTai1FoZXOXzMQLHx+EqiqqxXipWTwXvlBnTVsPmad4Cl9w7C5AgoEUuL0ofdCk/HYBYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoJj7VgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoJj7VgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F6C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756641593;
	bh=nVwDf3jL7EUEE+e8YGZvUeLtwI2UWlxCK9BVxdmdzlQ=;
	h=To:Subject:From:Date:From;
	b=OoJj7VgMZyDfUp8gykbRwH3VcPqtKOhOPB4qNzle8/97WmFODpXM+kATNx1SA98ze
	 x2IIbd3Dpk8EvoAND/6yoUwnxw/1Qq+H1WMsn5eTrHTqCl/of5nZdnbyjcu9KcA00O
	 qQFu8e/t4VuqfpXbw3wpg8GGrO2zQvk1HHa4oxQRT5v+fu/PWbeXHq1RGfu8fTxGHW
	 mJKaP7DLTB6/GdnP6jQOIHWhPvrQM8eNMY4Nogv7TRzuQlJXAechaDgbcwZLDhhU8E
	 ubp81Xbqae7HIGpmV5OCcdx/CxI3lelHKFBrXObdlLIHzMfqReJsrWdB4oIT6/csSb
	 wQhrr25vxrXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A7CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664159358.3977.10071644368169603110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5b1f8d2763755cb50352b25217345c84701669d7b3d4ed6a923999289863da
Date: Sun, 31 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756641593
