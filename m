Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E02D7DC0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762276794; cv=none; b=qh7QajFK02xgQeWjPhesRY+kXj28Hb6BDfu2fDsawx21AW4NikRFZrK/kGCc8pJh41f9msM/f4iUpW7uVdnCdWJ4qJJGHgIUgdHSiQdR+qU4ChLsmot4WWfShD9GqOJCh5Kb/z3sLm5rWS4Nm4U8zeAPwJ/NNRxqMaM/RAbzx+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762276794; c=relaxed/simple;
	bh=VyB//sitSGIT/qH+OwDT9W0YThlYMrTURJ4u1klTyuI=;
	h=To:Subject:From:Message-Id:Date; b=hH44RVJsV0xmEUrLJ+Hkcb4yuNlQz1ElA0CHn/q5rDtz+qz1G5uSDsoa9iU60FAaHAB+7vGPVLizFYeAYIcBFWkHQ+e29JxuCIRTJ2XGEeImC/JnEsWc8O+0Sh0rmsUdY/57LWYoZOaje5tETbI4hz8hM9/FH/dU56WLwMnm/po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KM7gQgkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KM7gQgkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD3BC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762276793;
	bh=VyB//sitSGIT/qH+OwDT9W0YThlYMrTURJ4u1klTyuI=;
	h=To:Subject:From:Date:From;
	b=KM7gQgkXIxhBNt4XK4jfNdNjDQObmAq7XxsflE+PlXbKCltcSqjWb9Na4NcYNWHob
	 c8UvlRI1H/pKZkUP8kdGZ6bmPzbYSnehsAXjY/ThGCHNcjpFFpT4URt9ARtNWY0aFX
	 O/07Nasi9rJZ2m31C9AnVUHuz+fSPVcSqLDVTD14e/nuE8VDLKG3R4NlEgl7Cy57mq
	 Y219UU+oRvir45J1Ah5VRdbDXqEn3RsK93dAa8bFM8f65c0NFnvbV7+iHjY2LCYXZO
	 hhDZvYoLz7+EnIRyLYRco1Mm6XqxluG5TY+yFz7eo87mi07X6WvE0PxIrr8L8k2ILi
	 emf13uM6umavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB20CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227679358.10834.10719664733839519322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b96d2fa21869017ba9e0ceeaf5453b1dfa7cda29b618fe3f695778d03dd1a1
Date: Tue, 04 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762276793
