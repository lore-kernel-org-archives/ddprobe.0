Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D4737FF51
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773726894; cv=none; b=lo9snwKy6FLpV0jOVAJORVKHjZtLpgA0wljW7Ls03oeIXTfd4WX0rFy5lmP/sxWtgzfXhccyDFbClqS0Mh26qvJgs/5wvSWnmG1IL2z4BDjaIBVRCQrNCWMpCvlDHG7aSNfF4G1NV6qjqXPzhZU9K/Lz4MvdFGJfJMa34yFnWfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773726894; c=relaxed/simple;
	bh=AfTJKdqKOziq3/8eZvV+wO8QW9y14D7mWWBrrYcHKCk=;
	h=To:Subject:From:Message-Id:Date; b=KQMcQ3YxVZesvCz/amGOG7l+Vf8rqPi5R6zkCOIQov30pDqDvZA3VNH08F7mUubGibZhyj2JnTX0cqj74vRmCfcHlBnSR/1hAsT4ErNXLtmEgX4KzLv4SqgtRM7+sIBHjlnq3p6bGqdyoqj3eDH3Xo9mwv8T2oxnvpEG5TI6w7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5SHU59b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5SHU59b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63EAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773726893;
	bh=AfTJKdqKOziq3/8eZvV+wO8QW9y14D7mWWBrrYcHKCk=;
	h=To:Subject:From:Date:From;
	b=B5SHU59bmssgadzOzZBHgedkl/hBB4oopY2g403h6EH42kCK8CrMyw/EpxeQhhVX5
	 PBayfzmT1TUbAfvO5CDJbtJ0rAeN4tHgqeSgmBFK+BO8dR1rhA34gj4JTVLfF7O78v
	 BBw81OPrLjwU4hv4vItWOFM1cc42EOZBYIuCPd5wXUd2C1afcENPYVMtnjw6W/Z1Q4
	 QDY2ZoZ9wcRWihux0V5iPM98pRmJlSHrCT/U9M94JmxGl/4AUVFjRhNV48sVUBOvBW
	 KwwK/maPzqboJnXdNnUi76VtExJ9Acl3sw9lMYCLW8B7xEnEyaKSW15I/MAbwgr4Sv
	 YEE5VXn20c84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CEDF506CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372689357.11296.8359955530551348973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263c6dfad25d298213f7e5e984ec9947b30b5f681646e097012d63b838600631
Date: Tue, 17 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773726893
