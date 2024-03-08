Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046696024E
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709923097; cv=none; b=k44mzD4M34Gzn+9/COUqnc+Sakug+IV3i7CMjJKSsbVcUlClZ43WVx0KqVkOX4Kug8tGmjKfA6llf5s7udmhycTgv+1HHSlUUTIuHCYWaf6XhF4Z+P4b7qNgmk7nXMmqSqMYRajYAHZj42lR2QW7Ms6lfaz/LReYCiLAwmScMn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709923097; c=relaxed/simple;
	bh=5f2/+Rl+pV/e+wM0Aw8e5s5rSHRMQouxU9kqn19ubHw=;
	h=To:Subject:From:Message-Id:Date; b=FgkbYTcYL+T5mRAP3MKyCaJSRwFDCmVIqM4ASj0lSGgqxsNtYYupvnU9fGW25NPjtiqgE7+CUJU9lNnZr8kMWxzFiU9tCW4d6nMOnaGRInIkdqTVNzATV/8D52G2c3IhhEs3NIxbWeqYs2Xphprmfzm3tR/p47UeniUrpqwigwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSbeT87f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSbeT87f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F42C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709923096;
	bh=5f2/+Rl+pV/e+wM0Aw8e5s5rSHRMQouxU9kqn19ubHw=;
	h=To:Subject:From:Date:From;
	b=dSbeT87f6qNmSGkqHijsSWBbxUXY/Lb8s0wBHzkLVLcLcNlsMOfqgvLdobBiywju6
	 f0H6LaITqJBQNAVPx442DdWzqXNrHLqx6YnomDSlBV5ju/nYyoiHQ5Wxnifmh5Bc9g
	 x3N9f0ZD7FU3WapSIRBfxiHnmt8rnrUpwuPzdbizQpTvfVlSs76aJC44l1VJj9eX7j
	 WsZ1ZXBvP97j0l+qWVcZS86I+vmtUkp5V0lh6m5pt0Tx47GzYpUvsKoLm4JYM+qswP
	 UF5bIhT0edGxS9DgKEfXKwSAWCxM44DrXTiSz/SYMlMda9FcLxc4fUoLPe1NnibyX6
	 WiEadfsQ3YV8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD80C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170992309641.25774.3839160399144650437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f39119a4cbab43a35edfc27600fd8adf299e7b666116cd7950f0d4ee3e472d
Date: Fri, 08 Mar 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709923096
