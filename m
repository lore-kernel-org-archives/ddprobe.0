Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290528F54
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736483754; cv=none; b=sEOJpDbJeISM3NbyCz6e0HdB7YHmyoZm453fBULTbBk0KQzKrUKFmUS7qqi4w/nigxXhHNXPPhDvopW1bxDDo0dwg9kQjswLhX4CLFGM6o4EjgBbzCfYz5Fxvj7GgzNuL4+3vTD/lkgwJPuo05B7O27z03fbSIq8xjiz2nxQtIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736483754; c=relaxed/simple;
	bh=AUZqOiouiuvl0r/y+csc23Z4JdUxaOdT4txGsX91NM0=;
	h=To:Subject:From:Message-Id:Date; b=YCYpQXeByExTc9lJmP3DnZ+hlfpupUAycndfI4vtm2XewaWV3KywAXWGW3pdKjWxAOdDMo7BtAX2NiR19EKIa/IFZ9n+R1qqTstVa257C7Oe67uSuxNdSRoebOWoPSvpZte+TDwet8VazgpacqHnxfaRJbS4Y3u9LPhWlL+wLPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/+y0aRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/+y0aRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9E5C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736483753;
	bh=AUZqOiouiuvl0r/y+csc23Z4JdUxaOdT4txGsX91NM0=;
	h=To:Subject:From:Date:From;
	b=r/+y0aRqSVcsEjiuWEGSLL56P0jjSulzBwXn/mdXj4l0S7fxOA2aWX2c9CQLi4Dzc
	 zEZLL1Ud92xqjziLSgVi6ynmnE2+QHmJjo/8Q8W1c6EI0IetDY9CwGGrjIdL2ZvUHt
	 XreeF5OJnuiud0cHH413XBovoHO/3a3o3kT7L9tK0/wd32fj3FeWk4om3BI+C5B2wX
	 ycz02UVpNVZQiP84/HuLF8eG5VadtEFoGkl/2KhpzrhYzEzjCBV7dQAXy9TKSLsdGE
	 9tN/72p/+FTx3IPvOuJqIA3SHyYR7k4iLPTPNa8NR0MCab08C76ZiqeOaa91PaQNIg
	 CMFCvrMNa+lmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD6E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648375359.3168.14451566397410247919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b1b6f00dad712dfce0221de9bf623055d92e53244237abd25cbd9fc7fe0736
Date: Fri, 10 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736483753
