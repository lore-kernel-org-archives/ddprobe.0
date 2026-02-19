Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD652D7D47
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771539894; cv=none; b=DqBTJ8X7gOAk/Watfk0bv0/m64IA5X3Vg96mYDzUrb8Z4f79GabGrqePHPv01LUMlZYoj71vOpaf8NmqoKpzNSTW3UgksKkmBtCBBIORETrThsTjgxY5YrtlFnYIsZTCzY3rEYWlRwirZg/N9OhyC/Ft3d/LHTz12scncFw0Bqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771539894; c=relaxed/simple;
	bh=dUv6XvrpwBFtynTy4Socn3hH+tjeWigoqyvN9sNus0w=;
	h=To:Subject:From:Message-Id:Date; b=gU3mqu6Mk8qvfO1JRVdVjZ1FlshOjIYOEjgXDSb1ruC8U/DpWi3RuhrsHdVXwXLrfabGbMpQYu+3T02jjqL/sp3jNh5X99kl40at36iPw80I1Nl7tzCEqjPq5Lsd2t4Ia1CvQMlfHCwLQoUKblOXnU6GIBLiXJvf/Nxw5KUnMfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtDIOBIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtDIOBIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B8FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771539893;
	bh=dUv6XvrpwBFtynTy4Socn3hH+tjeWigoqyvN9sNus0w=;
	h=To:Subject:From:Date:From;
	b=VtDIOBIlOz1pDvAxJxIHjtZ7Jq42cC7inGBi5qV7A1u7lW7kX+oiSOiJ3xo2acXAH
	 1GJXTixCVQYqJ3h5FhCCf0Oyjodgg4j0AUzwZ4+jJjrmuxOfe0hudRR+wgenp5KANf
	 DbNxJC+LbpInCDf/WmanacvAZlPdYT7yWWh1SVCbp5+Qif5oIUxO4zg+gwqGWRAPaj
	 twxgxKytmg7s/V68I7Fh2PD9B8Uo1pyh4FtsvMC23H9/pVOlndIgEW7qEhJuJilHPA
	 CGjxo1g8uVewCzA9yKxWeKPAb/kN/qapxdHvUuh9wYGf3KdlTl8FRLyOu8hJwC6xm1
	 fYy5TZXK1SvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECAC531E5
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153989360.1987.6650112048642952752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0f89d89677e48452c3e6d13b6a4ac8a8f2d6887e3d3f7ce4d256534d7afb63
Date: Thu, 19 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771539893
