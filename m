Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03051449ED9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772142294; cv=none; b=MO+yr5Baq5fCPXiREgOLa3GulaRFUhR0FYdg3MXqQ1Bf6xYLDq9eorjR2SyqvW3RCqGwbz4tUNAHicBFSdi1VEqvUFqnsRNFDxT79fJ3I9qLPJaMkEh2/yCdLpXHkaJxTPsnKGYKkZaOJl86au97e4HA5K8kQKSxt0n4dLpcmnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772142294; c=relaxed/simple;
	bh=3AnelAI4fM1NSAsGEuZV+nyEPvCYOEeaJ0/uZ7zZ+rI=;
	h=To:Subject:From:Message-Id:Date; b=Xq8RToYZMgG6syOuaIBd+21xWd+dM4bGJOvGjtqmpJB63OTIXGs9Eqichm0srK1y+ahwOa7DgiBAFOyYe8IKTM3A8F0Dnk1YcUFPzL4jXUxMA0C22kJNQ5iK6P5vSDWhl4yNoVJ5KMPTeZKyuc0jI6IcaqiTl2Ot85Sld2E5H9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3e3Y5v4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3e3Y5v4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBA1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772142293;
	bh=3AnelAI4fM1NSAsGEuZV+nyEPvCYOEeaJ0/uZ7zZ+rI=;
	h=To:Subject:From:Date:From;
	b=a3e3Y5v40ahAm0rJ4stukwnvwfADK3UA1B7WY82XR+5NN8Nrfk3KapVEZlVt9g30G
	 K5zHtva7WZ58uQKn9g91JRbfWjEE7+xlvNkKXjxYvEP3pXJ+SURIPV3A/sH8KyC19m
	 1YaC1vOhMEv+TgLwwarS6NYRPgzxRq4OhTv6MdsylV88d2LlYQYFBd+JRvEIBf9c0v
	 IrKP3ziY8GgLkNPJicW5ExrSm4KC0hdl9rfjbo2BCmHDxJX8dygOTdULCPn6BJCdP/
	 osCU7qqO8qreHMwlkV0WMrZ+IOQjRuh9wqJZj51ggYXWaFohgW9/CANBYdUBNAi9Di
	 9qzYOHuYr+cGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D71FD9E19
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214229358.814.7685647339182953993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db22e61c6ee17bcdbda4860f9f5489ecef9d54bad9cc945c8f5777ae0362cd5
Date: Thu, 26 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772142293
