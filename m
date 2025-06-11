Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A776235044
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749628794; cv=none; b=mDOs9azaqowMS3kcTAIlnGBb2+UqALDtKpjZepyeP9pF/QeiKXNA72RWDME7gawmNfZjLg4T4jG97zJwrf4IYmLV2ZlzNlj3GeDSy8mm+aQBsIHLFFWNqHGnMHnDfQiCvu6gGbz/eMBBff4q2K93dAB8owrLsEO67jA5mE/DA64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749628794; c=relaxed/simple;
	bh=rvCZyRs3pBCXUDOGHc0UUU53I6VPn8Q5QofzN2e+FkQ=;
	h=To:Subject:From:Message-Id:Date; b=MOehYcvGuL9ejMHaQrl5SSW6HWvvpYwNxBPvUi8X9si4NGdrxGn6XOix1iG0ZhMEZk1XHTROAgx6xLxm+F9VfuXrHuVJIAlY317G2cdzwDCt5eKPkhHtYaQ1ESsimXnqOiM4p4Ihu0PJm8kd4qMa56fP5e3bP9FIFjVdn6n0XMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSk6GOY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSk6GOY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A477DC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749628793;
	bh=rvCZyRs3pBCXUDOGHc0UUU53I6VPn8Q5QofzN2e+FkQ=;
	h=To:Subject:From:Date:From;
	b=sSk6GOY2CxBosD5MZIpC2P5uF7IshJ5sBGNWqjU6aidYGY1fJ5GjIN5CSAK8CAWKG
	 oZUbKxURuFacKBPu7IJy0Kin5cNtJJMBCwNK1iBxaH/7G9liGUPrY/PtOy7roDg9P2
	 kVePtGroWGLX5zEuOue4oFgFn6wvZfzN3cMgYy0uDkEmAGt9q063wHbKJg6x6bxXj5
	 tHLcIKtdl34mLd8925698mUWvquqtd1ju9ugxOlWMKul96ClM6ssj66/pzXwZBqRZ7
	 wiNFjjHZpC6/RtZHttTcwgVIlnaWAUtiO9/E6QyaOlVYoy26A6lxM2TaMjKRdR/+8/
	 n+LnPlkPQfcSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A1C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962879358.16200.10972344429224925903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a1e6d0088daba8654bb851af6a10ddd151a5b79be57f6e7288d35d770dadcb
Date: Wed, 11 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749628793
