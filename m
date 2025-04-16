Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A0C10FD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843795; cv=none; b=MqEWOsGXPnmtmQDPTIF5kWDk9bBabO8jjTjkRi+rq7WoKdjYIxkUGmbNIZJgMlzsqAs8w+sgb6BiEhw2VQI2mTFrsPfayjFp5StNHxFKC/OtqZDjgJHfu43CJvoKX84XQJjtxuYXy9H0GfeVe74aBNtQHx/HTx0bolC9CjlJcoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843795; c=relaxed/simple;
	bh=v2HQm01LgPoatFzwAESM4L2+raM8b8uSmUMkFs3UqUE=;
	h=To:Subject:From:Message-Id:Date; b=n/X7Iohx0QNfQ8GZMlFeposO3FP8OlGH5Jgx9hwEkASspQMz5ZTHbs1z/T71uZLqS8Njyk/GoCX3y/kDoO2qi1GFI/rTiVu7gBJqIhpP5WapNu+F/qU3EKNQB4HKmHms/Thnn1BYy1YOHefsFSXrg8ZhukTXgBhRdxJrAe2TfHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFBWjI8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFBWjI8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE48C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744843794;
	bh=v2HQm01LgPoatFzwAESM4L2+raM8b8uSmUMkFs3UqUE=;
	h=To:Subject:From:Date:From;
	b=JFBWjI8d+M4nqMYU2Se5qLz3EvQQ5j0WUN/uw5+k697X05LJpnmTlYdxGzCd/+p0+
	 Uk3Lc9DP9DIu8uuSuMvE9lomUvEP/Eo7Pky7JpUuSQGIlLT8TfFQSHQBXq0CyPWbsK
	 dLn/7ceYS3Q+xqyOQ5xik1+rl1Xwrl4HWP9FYuCN0g10Nj8ZlSt+5TGwTjPzpwoFhs
	 T49X4Qd1iMZh9FYVFBy4oL9NrNpZh38COoN7jYJEtugePUGVDjwlmxf9RPvzyG78r3
	 +0aVg2hayznIUGJRoU87WOzfel1hWhmrWORYs2tw2NIfw3UF/v4ydp6D4Um6+IM1JM
	 VlouD56fiMVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5EAC369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484379361.29632.15755520103462827636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a2531a174f49693df0b63ede5333b376297daf7e896a6e856132f84075835e
Date: Wed, 16 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744843793
