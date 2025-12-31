Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040725785D
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767204834; cv=none; b=mB930LS4vZmNZEB3Un3et/UZYzRmJjJOA8gTNs9dAqse0X/QjvL87Syf7OEIJ/5i8p69STJsapSJpVO5r7VZjts6Doqy51UXmJ9q59N9nkWKw88+Cun/1aU8CongAr1oVRHBXYX8MkUGaPBL846MNlYwtYlgDg0+dYU90jITWgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767204834; c=relaxed/simple;
	bh=v6qHHzI/TrAsJGLZ1YOEQ1UfggK3BWvPnjLuKxXC5sQ=;
	h=To:Subject:From:Message-Id:Date; b=G0n+YZHb2OUZjIpj4xPbkuQ3grpAaeWC4aK3wFyj+Ieu/2zJ2UvBx9fpQZKRz5h2mqzV5ix8cTgrAMz/XK9OmPA8+TbHHPsdKjuLWyiP0XIHV1FQkfVRs68EjbENqke9gYB/XVjzlwonz/tZwF/yz+hhFcXFaktEeVRPV86BI+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAjcx3EO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAjcx3EO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9674C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767204833;
	bh=v6qHHzI/TrAsJGLZ1YOEQ1UfggK3BWvPnjLuKxXC5sQ=;
	h=To:Subject:From:Date:From;
	b=OAjcx3EOgi96rIh1rzvAG5b41wLrY9VU4a8m+Cd7nB9IGpOQt1jg3qtqGiE2NJdTU
	 UgSA7MPSaFOlp5nZfw0ZjIdekExJwwARtPQs/x7JtDvgA1Eu2cjWzqnO9q92xdQuak
	 gfE8B1ekj4JkUji5f+k4xHfPd1zyL80fo65IhEkBCDp4Qwbr+iaYnAYdni9/dgjDh3
	 /BqHY11cqDqrNWxXoPwVSYuNSWd8X9D8HR5JN2d+uTBE6SDq3gXLQZvXCRnCtSOwKW
	 7w3FiaW1XXRUU3D57EZAPHs0p/J4pTUvBLdFfaCTfJCpg5R8JO44WhX5F+8pkz95xu
	 AsqOtm50Kfv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92767EE645A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720483358.28078.5472188258010946866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024e6239bbecc3820aae4708627409f31bdcc533e9f795138c7ff9066f026033
Date: Wed, 31 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767204833
