Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3EF26ACB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744169995; cv=none; b=o9rXnkom/mW1Y2DJJn8kNEGTIRe+M9c3s4EKrEX9MtjHEhip4KazK2kFD+bSJROR4VmUrRUlqImZM4KJlnFATKmECHJuCL+Jho7cAokvgySwv2PQWy8HDIXin2s69mvH6lLisNM+XO/kkTIWdJ9+UE9Oq+OmFGO9gTCG+C59cPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744169995; c=relaxed/simple;
	bh=bjl4i0oYzlaz8SJn3wIPqLEDU0rVdY3JC0VIpwr6Z64=;
	h=To:Subject:From:Message-Id:Date; b=kR4wY+bF9R1SIosscjD2S8seNu1a8budRWWKQlZjqwFuKjWQNahwS1UrCRBBXdmHswFiTLciuoPYb70oQDsu6hpRy4mnwc3qnO7WaYMZSkCV3xMW3nOySNJo1ouFQxubQNCT0OcVWY8cpYxSNzJjaufbqf5PbMWgdQkyLqVhDBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfNlZ8+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfNlZ8+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF247C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744169993;
	bh=bjl4i0oYzlaz8SJn3wIPqLEDU0rVdY3JC0VIpwr6Z64=;
	h=To:Subject:From:Date:From;
	b=CfNlZ8+yY0nS0mZw7oFLmhOro4NkTiqd4VGOh/ynwh+E0TjKr8g9yYrFWCVGgludb
	 WcrESoCYJiBzfVmpa3KJN2qbrFXYSpkL1VHi6yrX1hAdoSncs8XY37M570bdlbdo9k
	 SRXme+hFjPh9Dtf8gFzrvX8NAbBrPED2CJyAbe1TNEJoDp3N09Gs4An5KsSs/GCDtw
	 cmMXfmnufez7ve+Sjs/38BeVzMeXMPW4fDx+eUdRfarjMgRAO6DvOG/JNS8FqjBrym
	 QF7E66v/r3ShtPiSOwR+ZuzhV2L+AyW62FLrqiuNw+iK8rU/N2bulMtxG+5DIPXs2S
	 aGCcJZ5WkbX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15B8C36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416999365.26279.2456742435045430599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839ac95c6bc6b5458df349076cb9f2542c0d714c1fad881922d1549b731ba545
Date: Wed, 09 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744169993
