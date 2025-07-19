Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0C1422DD
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752955794; cv=none; b=DO/jWKCl1c1EueY1dBQzIL+c9TQ2lHnCGIA/HMkHE8mzUTctSk8b4EBfi9MgwUjX3GTekMnENqPIQ3ZnnqPz3395C0+F9ygNA7Zb95WFYyCLBtpLpn4o/nn3BQyRc8uB5NCeecd07uGlzN8sbmKMzvM+tq8Kbvn9zSncB8YOlgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752955794; c=relaxed/simple;
	bh=dUfVjNS+YAeAQwQU4qjO0t8x6ZPNjg/Mubqnt7Q3Zzk=;
	h=To:Subject:From:Message-Id:Date; b=mazswTYkBJVGhRMcl8L0EAKqDqFmwkk6Td8vztgDzgWMbtdJGsrjKCdJeKOliXsXtAdbnB9i9hzCYtVNPfjNZzX6cXc36Xq8Ek9YrazAtyPodGrpX7L6BZMAjjYGJjaOMfUJT1wZKYWvQCDm7ShOp1HK6PtV3vHy8+7WZK9lTVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnCNhqzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnCNhqzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8443C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752955793;
	bh=dUfVjNS+YAeAQwQU4qjO0t8x6ZPNjg/Mubqnt7Q3Zzk=;
	h=To:Subject:From:Date:From;
	b=PnCNhqznX/IGUH7/a0y7P4xIG8VStRsqyRQt3I+4zGE7CuK31qCA1+8p2dcfaxvMI
	 9JMQCBybeX/cNH3xtMtwT2dG4YGK32uqBQ3CZBb9enxoiLoCbw1vnxB8NaP7auMqoD
	 g43Sm+Ca1DmlByWkkfLEQLocuCJ6Om6aLI/FATFF8TUGre+qQsOd08nj9cAAnykrkm
	 65FhidapxslSBTdQmiGN391aS89PV5TPpHI+nDfkuzw/4QVqRsXBP0o/izilpJjdad
	 4QSZq0n12uc+PxB+JZ9srWHSj5mdbFDxED5c+vGYKdjumjbYnrSr9Msx+mG4WAKm11
	 4GD1rK5a7zd0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAAC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295579357.3398.7093540675499582717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec529aa89de8877e60111755b9105407a30fca4fc2546bebf2c33e55663b4f0
Date: Sat, 19 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752955793
