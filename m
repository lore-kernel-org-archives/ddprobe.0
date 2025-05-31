Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342A113BAE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748672395; cv=none; b=YFzh+FNiPF4mC+91vY/yQmV3PgGp1g7nmex3RtGrHnxckGkSRfx7BwsNLR7ewLDui7HpwKpA8dQ7cdPbXx3H6iHCyjHm8W5sbZXLQmGyYMo5GERSQNzQSI7KW8HdVSOEJ+oDxj2gflk34hqaoG7vLQFkcKi10gOJ8cAyjUwOMqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748672395; c=relaxed/simple;
	bh=y718yfeAM9g/8/YtnYYeiKCMfXmzpkMJ/oH3YVK5DaE=;
	h=To:Subject:From:Message-Id:Date; b=sn2lYwp/wp4jmLddlWNZ6ow1OXdlOhPEoKHadub+LqYsg1kCmOrMp9ynLD1MSS+83bWxtTIBlHLm678kucoIYgaDOPY16lWBR2Gf1Vym+RGD/JgvvjfvpF66PK0GKekyIXSfudV4TZUZ96qNijsUVpxHTCdDnYO8XZk6XybR9tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxA1yhKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxA1yhKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748672394;
	bh=y718yfeAM9g/8/YtnYYeiKCMfXmzpkMJ/oH3YVK5DaE=;
	h=To:Subject:From:Date:From;
	b=kxA1yhKJcxjxqLFlwz2jXpO5KTpjj5OIuqxNSBvpvPvMCIzu5WrphXAWBH3NDmVfM
	 T8x5SpgW4Pm7dgR9g6R2x68IRDLS/jHbtAWJ5jyQrIJe6S+ZWxtxnN7nVzT0VppwEP
	 V4mAbPSsO49pei/5YZOBWrWA8fvBHpiduR9aFUIcRai62lDe10/Ex6Zg0VXLDGEcBZ
	 diW3fVjzUWnvbPMMD8Df6oSf6twiJaKsVk7/1VyaiuIpCMXmEm1dkxEvAi8vOkxyJd
	 J1rnZP3O/XB/QQiw9U/5fg38pyzayaTuPvfpNa0jOFUmdNIMDkvjHzj8b6OV82j4Zq
	 w7SRSXV+RiEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE05C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867239358.24396.17736706162609035828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecff354e3b1845e73fa005ce441265066b013c84dc7f2e17b23d47f9692feb8a
Date: Sat, 31 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748672393
