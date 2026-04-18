Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE8D175A91
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776513454; cv=none; b=uf5KIJUzLzWS9icPLJOjpjjSCbcYQj36hUy1DRPeujuNqTC95l8aZt9F+l+uxTPT0UrXTb7T29fLDr2EEFDtRpLGtUlQPeLNeW8EEDrhm26ev2IIRPI0HSVcVfHHjKEDzHPglDeIlfW2rMBGR7ytwxdrZT5hSNc0SeYiiHcbsE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776513454; c=relaxed/simple;
	bh=uR85xMgsYQN73Z4ci161J4MWsKXfmi9YCdW+7bfwjUo=;
	h=To:Subject:From:Message-Id:Date; b=eff775PrUMB5d3CHlQJFj0Wn0DuovYnPasnO8aODRW/KPVB1XaPB18ubGJI6grBZ3qnUeFp7TcM5+M8go2XJOcc/82IwBerdTQX3CTpdHpfseuuJoYALnkjmI9JOFP9GUjl9jHcM7FDoUKv+oibgvhKuUc8mFOyHNa9F/M5Z8yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo4axgZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo4axgZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B736FC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776513453;
	bh=uR85xMgsYQN73Z4ci161J4MWsKXfmi9YCdW+7bfwjUo=;
	h=To:Subject:From:Date:From;
	b=Xo4axgZqvgmVbmCn05Yxq3c6jS3OY29C0DR2mq6Wgm/BNazcr8KGihIc78KcldBPP
	 lsCQC4fmw3hPWLNvXnc7JcJ/oiDmhvTmaJnojGhfPfxihTW7qkwzmDfsiNWqzyrM8m
	 4sdYjBEXk+k+KNFK5Pv1LQWw97ekRCjK+a4whE/yEIv7x3Tynmykon0F+OuH9cXXoi
	 o5upJ+i9HXA1Oy7jHla6sFD09hx/iUl6xp8aEpDcMLDAHbqCgKfrs30NPmHXkFoSe+
	 QJtte4h0dM7OaIeYW9fmOFO7E4VwvsEsgLOoO63xWdLSYFNY45I0e1AJSJeaO0ALfv
	 k+DFVzY24aWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95CCF99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651345368.24249.6997228085648444486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fecae45657547ff59486ea1f672fc0490d0654a47002fd38f5edb1d5c817a13
Date: Sat, 18 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776513453
