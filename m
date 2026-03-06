Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E9715B971
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772822094; cv=none; b=Rjo4CIcWQbQ2Qx9bpn4jHUHx8ExDzgbe46gh6iw7GU6AaXv1cUH2zLAH3/7HqaMmYKIlsfRTKitNcs8+G9cdR7jB2+UghzKDidzJmaoLyXbHHzmo0mZwxX5kC09dWWxatGgY7sFqiVOPzZCOa2x6wNNhUXCrMAFjx7IOWFi4cBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772822094; c=relaxed/simple;
	bh=bB7JAXpbR9OyYX5fDMIhZVNTr4jnGYIoIJ/xElrMDCA=;
	h=To:Subject:From:Message-Id:Date; b=kvuRCumL7KmKlHpnssFlqq9/F8/suUOA/6zuL6K1LGR9yDcE9lhyC6mIqo704T7LX8CZJ0CpkafcLOXgtRjeJbg75vXA9EQ+jyjjdGtEHO5bSBPFvoo3+9xDWM17tJxF1dRiMkBCd6YsHVy+dLzvTnboFMP0Aau57+O/t6pePyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AimXVzoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AimXVzoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFEEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772822093;
	bh=bB7JAXpbR9OyYX5fDMIhZVNTr4jnGYIoIJ/xElrMDCA=;
	h=To:Subject:From:Date:From;
	b=AimXVzoG6Bq4fy71RsARpv2v+kMxsIEM/2KTtsqACfn2L3vm9aAvH88goAV+sNiY1
	 LFH4PDzQdA+3DCF25++6BkG9wIosofW3OHeT8EQ/5e8dm4d3AJMnaGVZ1N/GgpyG1i
	 unqWf1Y4QvOszv+0mejuJOIfatkamwmqm6Ttdwf7Hf2149nncZtgHPQy9VWEf7771G
	 ZKaTGCOtlx5jeUOHD5NGJdcZqhcL9pLZOJLKZi5t0e48zjIsu9SjTDVlKNoX91s43a
	 ZoKf2pz7LpcgkKoDTma49bvvNQskO8avqfdkfd1UqQOMDLuSEIOrnqZic/X3h4Iki8
	 ewUPr9OmEmhMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F085FCC05A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282209357.13542.12791526527716694424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fe7111e7694e33672ae51133f3617889b2e384895c4cece223a5edc4d7c868
Date: Fri, 06 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772822093
