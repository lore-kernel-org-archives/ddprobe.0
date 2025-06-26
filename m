Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19C7275112
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750937993; cv=none; b=jDmSEYxHYY1bvh0slqflOlr47l6C5R/Zv+XX2VyPxUwQPPy+XZrQAMCTR8Yk8VoDg3rj7XyR+D0mZvyqNy+NBeFpqd2KBxSHmiRIcophy6v8thV0XsLdFudM3PG6i3+tumjOo0Owpb6AIW2asdwPwAGZykxqaBLTueps4ds6Bk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750937993; c=relaxed/simple;
	bh=Tvq6vn+66pQVNPn4/MYXoFgoxVBOVYrt9lyg0081f9s=;
	h=To:Subject:From:Message-Id:Date; b=kKkxYKZ5c2zVxzyl3e8tOhKrTWskJ1X95fxKHmH0nz8BOf68EgStzVA3gM3CpH1hMR3uZKSskLluGEvVCBcavXaYiwKCW+PJVd84er4Of4nWOhJksWIBsJEYCv8ClNbHDZRFzkLQ8Z2FKHudkB2Q0l1RySANRLJtmazzpvccaGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoFrl+98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoFrl+98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C65C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750937993;
	bh=Tvq6vn+66pQVNPn4/MYXoFgoxVBOVYrt9lyg0081f9s=;
	h=To:Subject:From:Date:From;
	b=AoFrl+98zyiVYbTrAx4WXatz+lP/ls0VejAW8tlczt8kOkii5uZvSP76Txdu4RuvI
	 dpxWhX2dY8XkEcXlyJKNQMoAdsJD2C1rKamzHnwMavYPa+bSsxgOHetYFFX+d+OPIf
	 iuOcQHPNW2pckA770xQj+z2byRBKyY7nYuRE67EgGpF7AOB1SJn/63yHLHwzY2dvgG
	 7RCN2Ks1hu3w7UhguwcGjQcx55583ffmSiiOEYw4CGnXGf+An4P4ZsAZJH+AHgztnm
	 yMjPRqtNfSWbZUVFn1b12EwDq46ycP/lKK+JB53Gj5jsn9jFtrxpI3hE+GQOhRv2cS
	 zgRn7aMlUoJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB9C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093799359.31592.2964839189934770874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6426a59b8950e2109235f19460a11a48e08c249790e672ebc7e34e879f2435
Date: Thu, 26 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750937993
