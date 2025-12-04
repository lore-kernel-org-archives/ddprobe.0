Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214DF33C181
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764839574; cv=none; b=ooC9LDVxg2Vnsg5In4hB2FU3kWmY7tMQWpC7pL/f61AKcD6dgZTOQ8NNCnY25knmEQeE4L3QKGasote/tk6Wqk8jHF6maaLz6UuQBEDmbCSqCqPIzuEIJjB0RDiNtcGOlJIOKyr/zYOutvhm0Gmhn85XjlXBTLSMn76lOwwdCqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764839574; c=relaxed/simple;
	bh=Wa/ly3c82n0G4UuSg1qecDgOnEWNMHSa/hj/zPBs1H0=;
	h=To:Subject:From:Message-Id:Date; b=MrOi6tyF95zqTfp4ONf9zRggYeiqsKucZTmxTO3gv54It0E3cj/FfH8kTt3kcNwydYbg0ObSgL39HY4L/xtaM0Zdc3jfD8pMj7QKhTVOSHnQde4dM4BfUU2cbROnIg9k+qd8tqrCBGjX6OiVVivJB+RUrPzDNErHPlZl1UwOsA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEXzUg67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEXzUg67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0049C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764839573;
	bh=Wa/ly3c82n0G4UuSg1qecDgOnEWNMHSa/hj/zPBs1H0=;
	h=To:Subject:From:Date:From;
	b=OEXzUg67BBMe0oaj4Jsgjzdsla3ReNFlJg8TzuaeCzdLV4TQdfbIV+30vVvv37eqq
	 zKStW/+Nqr9VBC+mJ9Zn8de7ueo8r3Qb4PvThvUmzT1ZWC/AFbLvXN7HJJKcllBH+I
	 nCUBEOz6tQ4iHE3KgblkwifJ6aXXG60AAU9/Vl94IVFboumEWvvJ4idQ/oe1xpxzx8
	 iZS1jD/uxzfI+1rhweIvcrBqnX7Umzu4fI0gtuie2SqTKhQmJThP1Ns6s7LtsnLO5B
	 pAzLOdSdXg0YrJrK8m8G5/LyoiunqoDRIQuj0WPRR4YBq/hRgH8YfBDjSxk0Ifgjy8
	 8nCBwXYK5Ay2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D1D1D899
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483957358.2215.9335237552035884172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c23aa9b6d26845a6a689533fbf31dd46a72b670a801b62e2929f9f71345a2ab4
Date: Thu, 04 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764839573
