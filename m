Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C0112E4A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734569753; cv=none; b=fHpYu+DRV+ZnNdY/ie8IeaZ7By0KFzZsjgyufp4twHUAlJ+Epi/d3YVT2mddH0hvH2jE1tYKdmQWXHH8ObOMya1BcRqWUcra7bQgB+/t8ol7LfWQH9u+rfOSG/no5NT5J06oEqkba3hFWi5YJq1FFsDrPKc85M5KHQnG3Ff6l3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734569753; c=relaxed/simple;
	bh=TM8QOykHM+6pAZNbfXhdJ+H0X/X0oAhlsk4HbPTzzVA=;
	h=To:Subject:From:Message-Id:Date; b=Z+1zUIl1WMWT7jv8BYdzdkQ6vzCI+Sf1yPxLskFGuzrNMyvqfWqe2T+E/xVIjU8F30EzL0Th6ic6a5atVZrKsvQWwUKUkRlJc4ToW2/Jsf58vJxCuMR9m0HzjfzB5Tb9zNYxNtRnei0aOtyWDTr5OHG9ySYLDxO1QalRgZAAfwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF3Hnq3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF3Hnq3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE70BC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734569753;
	bh=TM8QOykHM+6pAZNbfXhdJ+H0X/X0oAhlsk4HbPTzzVA=;
	h=To:Subject:From:Date:From;
	b=LF3Hnq3U/7vnfAy0WKMpXIP6hJIQy212c6lSqvozcyTduT557A8ZNi8bpSdb1idPi
	 n4/bXSq9D+iO1jqUoZsKJwJLpXUtGA0Z4JapWAgis7ePF4YpdRoWEHKpYZD9A77o2F
	 mcm+zmchy/p5UyDqwwc377ygPuLU/9Od9ZbrX5CGZrKzI/aelY3q/PgnAE0KIUNlEw
	 Wy3Fkgt/2qKoLzl6t8Uah9nxKG9WZZEX5cg1JSxdQSzndfbGDOe8koB4WTO16G+05H
	 eqyYghGB9Q/9Pol10Yy71QOXcHXpKWv/hcF9bfqFcutsPxfx3t0F1OlrBkC+vyplbj
	 3G7vWdpbnMGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E48E77188
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173456975359.2844.2087435543956873959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb60ff167a73aa2c3cfe96a4ef65bec060165a31c7158b6e37953540bc8e764
Date: Thu, 19 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734569753
