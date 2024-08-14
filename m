Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB59445
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723593954; cv=none; b=auvOtN6AQJI0s3W3dhlwjWR5uSFFSWFc4Xy2MOw7Ovtl+XWLo2dmEpf/XIxJxeOHo9GLEZz5hLvjW1BPXygyfjzUH7SF8FT23iiY3zKkF9O3FPw9YTOoNOYyHFFB1he8sAx45T/ZS28MC4wLFc1xAuxl+SwSrpkOVK6/OtErqzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723593954; c=relaxed/simple;
	bh=t8Mjs5NAQ9IvVhYcf0Z8/2QhTeHcgDbX0pK6X6s2KJQ=;
	h=To:Subject:From:Message-Id:Date; b=B+sFsd6xO2W3/3Z/qbcdG2QZz1jv0g7Qm6WYoxWIodPa9WVo8RAZHRGCm01fU5S7/lD60PURxweJQ2FcSWp1xz7ciiKsCzSNwJLmcyynR+R239BzkQs/bOLRrcDXxYvM0Lzv3nLw+a3SJUq+pAsrUjMa2h702uruM8+rslKk998=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0+e/G1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0+e/G1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C22C32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723593953;
	bh=t8Mjs5NAQ9IvVhYcf0Z8/2QhTeHcgDbX0pK6X6s2KJQ=;
	h=To:Subject:From:Date:From;
	b=W0+e/G1layvmGV/bV2toxokbh78la286OZYdWWot3AKZlNgGYYdt1mobrqLzXl5aU
	 uRY0F7plYe3HXVhWJxg7nCa+FbjvbUW0lcSHJsKCHQbzL6/si2rUkdhavkPmwzHijz
	 dQoWNsUUHbrVxFOnKyCGpBXrt3C5gw97s+Uc3iEIllX87dSvpGaCPGhj2sNZ0X3D25
	 iMVUB9jfELdulMDHM5KL8rfhVs39TwYw8NVYyYBLXFqRJ6yAA2w5uYCI3gx6DWTRQf
	 FeBBeZeNaYs2bD3vWIpjOpkbrnOKLcapp2z9T1nQiTzmONLDciDX/a8lQz4fkql9iG
	 tGmFD6JYgN2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C69C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172359395358.12991.17034726778329953675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e3987bc48ae563a9fde073e0b12e22abcc74b42df604f90dbe1a7273938aa8
Date: Wed, 14 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723593953
