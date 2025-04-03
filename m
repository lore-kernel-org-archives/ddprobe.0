Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4722D251797
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743700794; cv=none; b=J17srXAZ+fI/UHAnb2R3ZL0LBmoLG6LyXdhWhnR0KVXBf/8AUlHN8SDW/Lac6bcbkIhcwL0Sf+2MyZbPhBJhfPN5uDQ9anzbplWdu3vbpajnb/Rtd2xLe6I5ko5gkqy+5VLbxVBTyojlkjGd0ggzEj0TdmTYNp0Neu31VnfjzU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743700794; c=relaxed/simple;
	bh=dGLFHulRg/q+6WQJZL0LaHqaNUauLxNc5G07DdWDYNk=;
	h=To:Subject:From:Message-Id:Date; b=s6OkW1VMVIFHJZXC5UPOFWmDs4b8zHWEtg0kCig2dSrlYnUZMSbChGsbcg8rH4zcwUTY5ZQ6YayXLS+BOlyHPv4DphepsQFdr9wGIoCl+eACUiOsj2PvFgWr29mrSHB6nsRrYpPlNfcRiZMqQ0+fmCcvSmEEYR9W7HQfoNtUMms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1/xqmQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1/xqmQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B405EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743700793;
	bh=dGLFHulRg/q+6WQJZL0LaHqaNUauLxNc5G07DdWDYNk=;
	h=To:Subject:From:Date:From;
	b=t1/xqmQBAFen0WQ0SiNkKHFg2UQ9w/95DeRFv1WTZnursBTAySj4FTEOqUJZHXVmL
	 mHTVEqFEPm2+PuCJM3M/3Y0LCvbPmvJTJzOGy5UJi/qPib+NLGqwdxGW+/fABz65Be
	 yeAa5Nn5juRoqb9eVGr+Q2TGWiabYAWsm7HisW4wg4nI+ExBjzTIuRvnwAmRMy6Ib3
	 zGiQ7WLb9uTjEDzvaA1usNU7Tt+XEb1WgkC/Dly8PEUHZmXzzxCk8D7ZiBgN21NJHC
	 O0FpIIEpTyI6qR3KNzEs4oX7qamPHbjz7/VKzibHQxXgFriK7l514JseyHxdKjOnxx
	 RtKfRrvQ6PvCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3471C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370079365.17669.10915774481453094049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098ef40a006e47c74b9389dbe4ff6af30081315526873274e042457e3ba8400d
Date: Thu, 03 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743700793
