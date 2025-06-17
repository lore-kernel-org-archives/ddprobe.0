Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239BD19047F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750144794; cv=none; b=ey3kVxG3SlJH3c90xBuAOpmV477/4LrXPuc4JSekgpyZpLTfgr0GZMVJ6J/sNP/ywwxNENiYueYfH8Y5yIiRJbOK4E/jBLfWYVfzEBsmONYVXyOlgYCjN0i0nsWW00LxH8XKER6cqhHhDsdqXsA1x2VeUZVNhqVXK3xo7kSlqEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750144794; c=relaxed/simple;
	bh=wjCrMlf9dXJcu22N6MK5j1SvAFtKForp5OTiLwwzoJ0=;
	h=To:Subject:From:Message-Id:Date; b=sut7czo+HUOhoqgpbPOA/LfqrdYYh/ZEzd3aDUjK9SsQ4TE0Et6Xh6flvy8AO0eyMhVcz+OFM5MihdnwqhgYH1enKhWib9cLhMOaV5vYrr1SAozCDLnTek7VBvzeV7AbHL7k+eWwjJbMsW1BC3NVR07KBqZlJfe4U5cz7mYH8Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bdf9th/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bdf9th/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410EC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750144793;
	bh=wjCrMlf9dXJcu22N6MK5j1SvAFtKForp5OTiLwwzoJ0=;
	h=To:Subject:From:Date:From;
	b=Bdf9th/AI7kONl2a+tnd3W4mawqlikYoksqFN2YHhkeuBGQ+Jg4F3TC5i9f9V+kkW
	 WHKw/WhE+3GGo8oaSIgnZNSzOHtJd5ByYFFJ4YLaXhLi3WH7Y9zALWX2qdl74cJUJ0
	 JMhE1ZBjKp86ggOc7UbiVr/cEy+s7X5WS7IK7RC14XrkIfhfKWQJx5aigAFqNBVIC+
	 dfcIKfOp4c64JjZAdqfPWw+VFb4o9D7rSMynaaMqOKp5yc8MVXP4HnBuaTkfhrCDrM
	 3to1ADpNkJihppmiuCMYIpWTweMUZZmVpZ/gUPGXbWoC12L7xMuqIs307+rh4xvSKU
	 tgkx2vre/Pf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181DC71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014479358.29545.9322785439022924359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5cec0cb30c6367711eabf5a21480c5d0e0943530bd431bb57263dfc7c6c1ef
Date: Tue, 17 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750144793
