Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3195A1EDA1F
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741261734; cv=none; b=hv5eGtCmpWCeJVfC0J6MEB+BGi5VlTUJHpRj0rdAhs2xLv+57SrSRiVH7st8lnDTIGZ3O/tmaOvcSdiRqzs10OUvXcHS6rYVAB2wrV4bf3p0gjgYRscG0zCxcZgfNxhiOYJ3NRoRbNKMxtIGGyLMnM+/Dx0VHN1svdyaxAosHdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741261734; c=relaxed/simple;
	bh=nYxbOHJhyHOiEVA8eOvqVg2yhCTnJlK5ELdgpU8OVi4=;
	h=To:Subject:From:Message-Id:Date; b=MvP3aBwcQXYXW0IYbYQqFhWT+UjkPq4wpxUSRWCdnN/VZadtpI1t1uu60wdWugAUQG2tiSxvl1O6ZhmPWJwTzgKv/vi299JUgrAAH1Aa0S3srOirYB8O5ldCfP4Ps9BBzgUlKCqakqbNxpN+1A+kECqo2Hz3mWAAFD5BUMp1QOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+GyIQv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+GyIQv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7850C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741261733;
	bh=nYxbOHJhyHOiEVA8eOvqVg2yhCTnJlK5ELdgpU8OVi4=;
	h=To:Subject:From:Date:From;
	b=W+GyIQv9Blbs8xhV7mLWpnvEv/fth1a8215mnHD3oK5IdCgdcQ0F3jkmIhKSq1fxw
	 yA7Z3WiD0/6EPQWUQwAGkO23k5tT4HtYZtLN9yzyNdn8xEjfjCFOGKK8u9S20R3Kmr
	 hBorWuJGnK+FV3yBPTr6MSQD4aC7ae87AvawhYE+qMds7AnRM+5VNhE2Pu2mkDzxjN
	 FV0AsPp2EeohQAWGexWztRjuDIthhwCvN6OKBJYt4e36nCbIN9QfLxyB9IEW83R34N
	 a2zBnEfjO+pI0QYH+dwIlH10Tt+WtJCE7NN69/onrSoOlYCrd1kTilfTWNCfGVhSTc
	 GT3yewzmyed8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9980BC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126173361.9188.3308180010287270824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3fef771ad188724c136394188a9a3c276d9383956355fa281f4fb5f5999488
Date: Thu, 06 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741261733
