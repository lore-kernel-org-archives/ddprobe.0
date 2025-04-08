Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABFF263C78
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744111794; cv=none; b=CK5a2RJ6qwETNV1nfWWbB0gJH3CDssMapw1JXq6DLhP7ljAGBy5nmKBwPmr8iXekwvgyWjiDPnIgPhOf+3mb06I8txg0eJ1iWRYEkfAjraxSXkSHagS9ou9ZddcCVG5izCxQIwxkUFy8HcSgQklhKDPeykC//15g1/aXnqnvuPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744111794; c=relaxed/simple;
	bh=UBBt/jUyISF7bzLJ+i8NxDj67RqWWPIWTjPZdLB2x7Y=;
	h=To:Subject:From:Message-Id:Date; b=L5MHZWDvyAnIETfrtVloTQD4FhZIFZWNYzii/1Ahl/vBkfHnXPzPwG54KQiDr8pDHVPuhDHnV8ZlQAVi4CMFuTIwAImOFrR3Wt31hpY+igRjzUPP7uxAsGZ/tt1yih1xVj2pkQTRAlzA3osfCzw6P4iG/+VVRVjXkZJJuF+QUR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUeOfuYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUeOfuYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C77C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744111793;
	bh=UBBt/jUyISF7bzLJ+i8NxDj67RqWWPIWTjPZdLB2x7Y=;
	h=To:Subject:From:Date:From;
	b=cUeOfuYVq+WCB4lGRtQti5O3M8AbJFx3v+98mYgb4MkhHzzvuzjkzxkIjWq1/PCkL
	 CkV+5sNGM+OTJjo+xi9nH3K3hFdkNynrFKEj8AAwltxpueN1TgLYYcHT0VjYzsRUCb
	 MmYMub3EDjRDzd9/GqAmXzU7i30jXr7S0gSOm1EUZ8K4M/2O63Tc7cs+niGLFgB50d
	 hXe/t8NFHCdxMMJBqolk0FIPQI2qOR3AElQhYhW0sr6/QDnScmpQKisBknQ6tcbxPz
	 3mM00IPTkTpIcduV/rRbaGH5wAimC1CtUhDIvvIsEcZyCGs6hSBQm7k3t8066B6Ta2
	 Fyclpuw1FZRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983EAC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411179361.4279.5221666361560524147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1266bcaa3097452b9ea9e57455da4609d26c89a3844029d74c612624b508f41
Date: Tue, 08 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744111793
