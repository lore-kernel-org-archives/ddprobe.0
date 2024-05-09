Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941B6770FC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715293943; cv=none; b=WcKdRp2TczB42xW0JrW6OaTvPaj5AdsVSUWOZuVQkVLc3CSHX8Yef+BWZRzx/Fq/uOKBr6Afv2Uo2qBzAbx0tk1ytFdREdpe6rmF4YvGo0NnIDu6gBbi4N+ATZTVdQHmEtd34MIsjGCgJRRWoPVv4pHRVpAUjo5sp/u9WZLS0pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715293943; c=relaxed/simple;
	bh=UPrckcggdtF/VJ8V3agj9YPv3jyKqZtmdS4Ladcr5Pc=;
	h=To:Subject:From:Message-Id:Date; b=EJoe/qoupob/gpqH+F/dOE6VyO+TdPAv12mhkrG62h0NmrLUDFxUDjqY4RZXktfTXv8/xiU7Ch5lIpZwBMG+eCqUh2bDrUO0gwWl2Mb3rHhXvKn2qLg27jvlq6IyfS+kJcqThSwahTFz5C1yfIKb7FG7JW8W55KdDnqIexxX+6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjrYA+4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjrYA+4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1260C116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715293942;
	bh=UPrckcggdtF/VJ8V3agj9YPv3jyKqZtmdS4Ladcr5Pc=;
	h=To:Subject:From:Date:From;
	b=LjrYA+4pz0oQo8TjC9jEzjuaP+zlUsyi3Up9bNGrqaWmIh/ieSSs2CxN0h3aWL6hL
	 SKz/gWe9ef66Jcl4D0AMi9a1u6zO2fPopYEplj8da8X/McLwEmNY1I2+vBKfexeosr
	 wLon0r5zF8Y4Y7/+A4TaGThqxJ9H1X8Mxw2wdvOQbrrWW4QDHNjGoPubFGkkAqUAA1
	 4gs6mVSDo351fOTMQcIEOnOw0mMec/jNvRIPjnkunYUEO6u6EaxlAa1HJ517LRWXdw
	 9KfHSLI7k8eT9oyntM7rZjdWgmGnM26WKSvdV/00MjELZWTmOjBUgM3Oz1sJVy3QPT
	 ZHBuaTFKtQjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9E2C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171529394281.26343.9213090560020297303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6579944979a1396c81adbb8fb5644fbaeb5373011abcbd3451fd20e475433e
Date: Thu, 09 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715293942
