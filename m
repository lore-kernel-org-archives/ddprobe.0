Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682764431
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720832363; cv=none; b=D8zn7FxcEpCwejQoCESAIRmXnMRc4cncgw/O0JRwe22EDdM6j2bM78B0/qJrp5hHaSBvPY4TZtiUTnTg5Cl78nZ6Zm7JZOJmqSKXLl4+kRkI/syO5RL7vC7m/sSbv2mjH7oeR5hHGH/k+klqrXwS2EPLTt3WxTsqpxvqX/Z+/5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720832363; c=relaxed/simple;
	bh=SpjmKEZFegVoMulX7/60uXhFtQIbiFeI7y0rn2JPP84=;
	h=To:Subject:From:Message-Id:Date; b=RK2FJAAmDg+SjDkK6Og44mKxqYZMS+CHi5XUAaXQBYeFcT2PjOBGExLCVKi59yTqS7ZHqyQyXa7TYjMe/HxEx0TWdPQFisO1jseNkRgmxdNLZyZHj3KHrLfwnC3q08WKwG9VBzNiCEHYsReNxaIfrHaRR6eABSrpgJrWkb1fgS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErENq8Lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErENq8Lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C9C32782
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720832362;
	bh=SpjmKEZFegVoMulX7/60uXhFtQIbiFeI7y0rn2JPP84=;
	h=To:Subject:From:Date:From;
	b=ErENq8LpAIVWgJES28NPfZ3BE3ocuqCKJjWcVnezJshDxH9IvOJ114k8BoHFLv0o5
	 1gqXVOlJqhYqm+b+s4hf45qd5cx1MD7u7dSujcKi30JBVIQiYPk1vVnqogGHN5GONP
	 L/kUn+/PjtA5Z0hLz/gcwxI0wkpFOOvD+8N2T9/LgAqxQi7c+KwvVq7u1PNBWVHrnf
	 11JRXyxPWm9VAPv10m1dUVndvImdZJQLGuRtDwr9wvZU7D62ZKmmcQkH85Jn5hbTp6
	 I6eoBCIWxr6E21O/B/X2AR1vA8072AHzImmuxP46wKouTKi4bfRYdQcLYME2FeCDhl
	 NuZ69/L5c8LXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BDEC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172083236278.851.3794906857661459619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0786e46d8447b60e5c4ffeef0df31ae6cdad69b1e8213c75df78079048617eb2
Date: Sat, 13 Jul 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720832362
