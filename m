Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6049625
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718461703; cv=none; b=lZjm+J/12OV9T7Sm3UYZRyMdKmErbFebhS9xMdOU9cChLAKAlLkk/7t/dKx207WoNYTmJXsLx6INWcbS8lt9PiaelSYGQgrxgtgZRVBGtL+a+xArMHplQePs8FB65Nd55Iqp/ZpZQHIKI6JYxw1Onio82p70UHTW4ra2imZ5rbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718461703; c=relaxed/simple;
	bh=2GtGxOy/RDOgaPq5SI1SZ+yqEqkwTrywL0HdYVuk7tE=;
	h=To:Subject:From:Message-Id:Date; b=BH3+cfM+9RNPDODzdc8gKJKKsiPEIJQFXsdH7fUmFtVgTTlE0TNgcX1geG6+NrCrwkZfaGS1MB5Ymz9UTI0QHxivGuxOPw2FcNEwYXBemk2yQsik7UvVSDa2yzKIKDe8VlNimZJn2mS6yoEw+2lRVjW6o6j7lK4M5lUhbj7ZwnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPVvoJhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPVvoJhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4009C4AF1C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718461702;
	bh=2GtGxOy/RDOgaPq5SI1SZ+yqEqkwTrywL0HdYVuk7tE=;
	h=To:Subject:From:Date:From;
	b=TPVvoJhSFcONosI6s6lc81a4t46ao7+h1Xvb0Xdm4Ensji5FdTJ6YYq73VZFlD10G
	 yWoZgL542JkCn3Qwqik9BsMp9AC1rMECsMwVSs2sFt4P3RikrYhr9M1xo7AKyhVkge
	 JfK1E1iPKguqUCpblvLPFA/2m6zFLoG+7KJq2dLkjcbuQadAh+JV1kbDuZzb9TKdmk
	 BL5DaCQsm3gNptsEvasIaTmE04LNA79fKMc4S6Tzw8m2CzlYqNEEmQ+ZRl2YeKn6lg
	 NYKKjyngVcZDDa3kqGUFB/fjOEZgWMGjzkIXgEeT349Cj5/IXNZ8bTVq7tw3TpUHVS
	 sNoJJcc1l4WZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC6EC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 14:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846170279.16583.9754048771517641730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23dc12dc8a237df1f1a516493eef339acbd71eea483bd7bbedad2ded236b826
Date: Sat, 15 Jun 2024 14:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718461702
