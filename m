Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41B93242DD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771691693; cv=none; b=pySrAQ2CrXcE9EPSsNBFLlxVQUYhSoJowZOgKv+zpIbObmIcUM+7/pHFz+Z4Y/hnahaJ1l6aNPtusppBo+8sQ8Lcf/H0BwKSSpZHC1owOFnyJlJkWrYRJvUQ7uCkpwklLejh6dzDcUak1Ady8KukhHk12UEmf05HkT6hXwn+EjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771691693; c=relaxed/simple;
	bh=Z0bJD7TiYWDZPslmcGmlIcA+D+cqsI5w5ROTRAz3HfQ=;
	h=To:Subject:From:Message-Id:Date; b=rqrElOPMBvDo4VqvNhzuFngRTwGMUHMQIKalV3rvhrUAq9aqafVSyz5C5iPA4Cqi1LeCH+rdq41jdWxCmflAQL4epICsW/nqOwAia49jYLRpFjZOcFyBPmrYxFHsRCDIrAYGnMvXrPNKzO7XNuCSSA5VYD5zyXDqjjA236JcCkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6uFY52T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6uFY52T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771691693;
	bh=Z0bJD7TiYWDZPslmcGmlIcA+D+cqsI5w5ROTRAz3HfQ=;
	h=To:Subject:From:Date:From;
	b=I6uFY52T4/gNCqQEXIHv69VSCrtOqVy2P8uFMqKTgKpYy3W42Fz7qAfD3bef5tQ+A
	 ZKh79D0lsz9vhEVEAq9SMQpv6x3tBgaCVv/PafGFFl1/jYnXGS9vmuWJksScOF2rRY
	 kK6x9mNlM7DmM1iULziVaW2qADB0gQI41TonFgtgG44dAaxcMuqICCCJ68Dq6vHCWc
	 mxxKDYgVaqNagNx7wa9WBkwyBBrZFM9HdX3I5pCicav6wTyJ9iOmuFkVVv8BrABwvm
	 qQ+c8ad5u1mHS5mZ2jf2H3n/UWSzHiWXOBym5pHmFxQVNfWOlKE8ntmmgYXqYnh6Hy
	 9YpiZQ+Loez1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A184EC61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169169362.25459.12281869470829072556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ed5e8b437c32af6a4f5884457b62f5f7f87c82059c6d17a18251c6208e0447
Date: Sat, 21 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771691693
