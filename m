Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC90298C36
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747253995; cv=none; b=fvAMeV3nWp9fvq6nX9RJ0u0YEd7UJuLKfR+dl4+mtbav90s1D1g2pgCg1fMDHTXvQGnVp350wHcbWOI3IdF4DYQUJ7sQCnb3INr2zAa+ZIWgT0KZgISJfW3hX78Jfu66JDHU5U5KIQ5Rh/4zzwEfK86KmHh9qoM6QlrOWnWwHe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747253995; c=relaxed/simple;
	bh=XpNmSBBSjYFCj7FR7TLpOSng7L9yEj6raSUKq+fPWxM=;
	h=To:Subject:From:Message-Id:Date; b=KjKRL6Q5PyxZal5RkQTXPmkrk9IVEbQ8zrV3VWlukXwjsnNwKw7HuNhuir55694o5hIelJEE5rlw3xZnfbWTVdhoyHdCvXWn8McbGNO7zLyesMmY3sGR23MVNjHMXdBu9q2K02uQIWm4t7elkAkseFqhjCsRsQjLGOgS08ldFBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Trtilc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Trtilc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A350FC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747253993;
	bh=XpNmSBBSjYFCj7FR7TLpOSng7L9yEj6raSUKq+fPWxM=;
	h=To:Subject:From:Date:From;
	b=U0TrtilcTt7QL6aMmP5+GB5FocS4E7SzdTmvAbualQ/Ti11dImuI1EuiMvxhDcRa4
	 yrqqn2SRlHr+r5vk9F5VysjGq5jq8F10/3qMmsuclS5/D+OY7pinlS0w+9/SRoKpX8
	 heC5fLXQAOec/W2Y/UJBHGqysVDepyEN6tmIam1VGgcjZ8L1Rq55p+49jH+NFyqP0X
	 6w7Ub5bMWVrn5nvmdrZnCtkF4afDKYRCwUof1J62e1InqDWXlrxxOFZ/BEFxSqcgdL
	 9AHcv0mAR7joqCmxiuqETA3PcFu/Zq7Ho0UVXs/yZXdnhndZdM4Eu+32cn7RLQtptL
	 eRGhXEBwp8PSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA3C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725399358.13736.8233501833826110688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bbf6f488980e2a3974925890f7c83be520bdb9c685593ede0cd6edb734b0824
Date: Wed, 14 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747253993
