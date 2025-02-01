Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ACC84A2F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738421754; cv=none; b=H+YZfTJPrcOOAsvhVxSmRcwxWtRjEmr3h3hU7mIoZYzlylHplKESbYflQGSO6+Swxt8HTWQNvuzQQnuoxT/5pINOm+XstguJO3SQtzLW4dPP5wu/APi+HXXFMKk5SRJIEWqH637jGaR6bAN4Rqv3MRYejIrVw+58a6SxjnvhkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738421754; c=relaxed/simple;
	bh=W6YY+n1XSbcKMU+Y7LXLSvjXbjtTm70Z04Fv9QM/YBo=;
	h=To:Subject:From:Message-Id:Date; b=N84ye4d50Z4gcFegJn0WWCzuT0hAKGBKlEYuaPexgD1zMJR9CSYEpNZe7fo0Ts3Moi/CuzvpGq9d3we36vCcdhhqXpwvp4kHGJBgRjcgdw/SjEaaX6FWF2fhL2Ou1ThvpO+cJvO4s7YfZ8XRhJtaklBENfT8abMv3bfWUR6JEd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY9ajLOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY9ajLOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9EFC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738421753;
	bh=W6YY+n1XSbcKMU+Y7LXLSvjXbjtTm70Z04Fv9QM/YBo=;
	h=To:Subject:From:Date:From;
	b=nY9ajLOPlyCw7Tc5g02Z46PTGVXYdlofOrAAAKdcKNoCSVhrx2cC2xU8rN+JhgNyR
	 V3EDwp59+TT5OhfmojT067W4dfwHyD7V7lB1rNX9wivr4jUfzf7jJHTq+VMGaD+9rr
	 nazlOAh57rFiXDWhwx/Un9z7o1Mp4vhevjp5aC78oJyu1mIGGnEnYY5B7GxKTivhXy
	 iEOmSBG95v+WP/7g24DiO2qwgBT5Q4T1duU0s2h8uZJFXE0eZmcfEwg5UA95+aFbvQ
	 skD8VPBLEKOFTknup4VwmZpxWLqRVEtaUU+IJ6k4NQpOced5FUpPn90YCeXzlcqu5f
	 S6pmHtooqXjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAF9C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842175360.20592.2893267910512964885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195f4b5d8cfbfcfe47d0dda99ed844d0f36120e498c919d89529c2322cfe8844
Date: Sat, 01 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738421753
