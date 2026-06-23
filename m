Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2873672A9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782222394; cv=none; b=M6mhlMZWaM/oc2l0RHSf+twVTSPXCQAMm3bVUVrzX17ckJ/K5QjNe6ST/WjX+MRJ09P+SuVOopLj9kY3nAIOCyudBX+IpfTg3IswUGe7i6WYWl+0Bh69JjTa0+yu3avnfic7zUB7ta+kR7lQwcA5G1Z9QbOBkbHlz5PYAV5QUBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782222394; c=relaxed/simple;
	bh=ZUBiyMvsV54r2qjMo08/1rKgKV1yAfWsea8Mfo6EKbY=;
	h=To:Subject:From:Message-Id:Date; b=JHAPW45BHn2T2ki3/2jY1xTXwngxcqBuZPQ4s9uWdIAJv/Jga+JAdb8tW2X/JORB+RyDozE9y7c/Fkp62XG+iN5HKtvelucD5/mX3kuv/ywBJNuf1O2SsmUj47lnYABCAoP07ha4KB+s+2Rry+0DwypjpFfuY+qAK0arjqNUiI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cm6UF17V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cm6UF17V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03FAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782222393;
	bh=ZUBiyMvsV54r2qjMo08/1rKgKV1yAfWsea8Mfo6EKbY=;
	h=To:Subject:From:Date:From;
	b=Cm6UF17VaGnIAILbzKhl3Hn7a25Qu3AF9YeIIIJO/ZB88lHSzcXxrYjvTjGQEy851
	 bRushLO7/gh6FJQehkLmrzL5NLOJDLDnjCAYbynrS/Lz607VdtHgyNfqdDmL+h2kjL
	 JIWNPP/cJUu76STgdpRhBDNK/8hoKxHh/AHXPGDUUnVElBSNd0N0GNuuKhnmz/d1B/
	 loMxBnhEYnN7X/diWJ2EwNkWHRcDzTRc3fdMhUp/dO3XRg9dCDVnAuAeAMqRFUWIHv
	 lWw6Pd4RJRY+vOf2O5orNLaJ/w8knrjRY01KI3uVVkmFftQldayQHHfKn+OuWPf7Ny
	 x+Oz3YkBfw+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC3CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222239368.2249.5069987261459080167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc51ad7646af36c3166db537807652fb57d81c47f829b5c5dd9cecbb08d18bc
Date: Tue, 23 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782222393
