Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A9110E4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754494193; cv=none; b=hYUueyj7QuVI3Npa+lO/U/jbov8jyq8tfKc4Jh3xw5Xn8k0aOqOL060Snj1jwK8D1q6L1jaDb9khTZLVmO/eFszE2z1qBUxI2cFncl3d43hBGdG4mri8FJ/yNVBJBjT8NPqBPyzrIjhDCeGxxsX8mJJGZUwoGziVroGg41vD/40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754494193; c=relaxed/simple;
	bh=uP8Atz9ZOqzK8EshYsfu/OLPK5iPrSf6x66jXk+VMu8=;
	h=To:Subject:From:Message-Id:Date; b=LKHqfjDrgNb69FNAG+s9obqllVjmyoF8hiDhu2oynFuHmNmfUhltRsJsAdF8w8kibklAYSbZM6ZKxKGEt75/4w1fp/OkRz+73ASJkR+ofzXE9kQYq+zM5nCRu0q/mvFiSyVcTfaDfQzjkPxEK0c17Cu0q1akD68DZsfiVGjOe7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUp8BNPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUp8BNPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DBBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754494193;
	bh=uP8Atz9ZOqzK8EshYsfu/OLPK5iPrSf6x66jXk+VMu8=;
	h=To:Subject:From:Date:From;
	b=OUp8BNPjiDNmtQa1IlsHObfpzb/gnzvOs9wjIqHHNcx0H6sRcTUAPHQ2hCfv5BDxD
	 DS6g+qw3VZiPfRD+4lWTofpv6dMawMCaLy+gEObbleIRklv6eMcUyNIJ6eli0eRaqP
	 AQkMXd0g8H7E1cLYkvU9LGLqN7OFHMBxCjZQg4mKg4WgchU/qK+CF6pKdeOdc/0arW
	 AB9CZRF8guORw7Xgc6L+YuNLICCHwkn4J99CPZ89dwJpdEky+R4kwrtjIiXSJiwWWo
	 cBxoNwlBYkDcu0315FHJSHQXrfsWVo/7FpFgkEsmgpXz6AX2C/Yf1Yj6TWpBugYn3L
	 93fwGNVIa/u+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FFC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449419358.23459.7379555427736549045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738496eea34091ed45220aa40e185c2e797b80b06037b1af8459871d2e93b25b
Date: Wed, 06 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754494193
