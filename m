Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331BA2E6107
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753274394; cv=none; b=bzChnOZYrZKBVDt6mEFOht1jaIADNCEYPFL852yKDrwGe9AHpY9GhQrD1Dv7+o7FhTIXeIPXc112NQv+5hKjzMrGKV4L8kO49OgL0ITnufcU/5tUshEQ3Ynh9qCwIrgUQsLt2olFi6NwZj2MKm/rzPypG/3nChlKd/Nn2Vo7DKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753274394; c=relaxed/simple;
	bh=hyl4Cqzncj3jyLwgjfY3n+du4/Uh43MIqVbZ4+deexk=;
	h=To:Subject:From:Message-Id:Date; b=Yk2rX/bcoLir4+ER6QPzeNY/VLRA3+GyBmFW2cIKzSwVsrToe74AQ2CnvMPpeSfMyhGXbhaRLg5NfdNVpaAn6l4uwoxRpehKBg4NTbEXHNgo3S0wZ3U6X1n7BiCePYNLtehlOWUfYYdJGWfhI4615bF7RlaKLC/2lnrZbkYWYks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqHyNhoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqHyNhoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B2EAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753274393;
	bh=hyl4Cqzncj3jyLwgjfY3n+du4/Uh43MIqVbZ4+deexk=;
	h=To:Subject:From:Date:From;
	b=nqHyNhoDt2UIpxo9yRFTJMh+2wjPJ00p8bg92JP3BQ43+qV+LO1rgkO4BpU0/p9aZ
	 vOoBJ/BGmA2XpAfar91c5O2/deEjMZ+tWYvwiAtMwtVqmeAU/PrSK5BV59P8TQbqdY
	 lksqWq2mcsXvFE/GaveezCLtv/VZHkFHO59tVJKGUjx0B0lf7TokStFxfNRl2S5N5L
	 JVOTQOOTagy7UY41nKZO4TiTmKkE+rTIpK0XG/pJoIcgpEAjhvgwqiKyl6gnCw5PoE
	 GsphOEaVVVmUEy3HWmGX5gCM0bzzU0Wxu/4AXwlT1ICVVi2nPEGmp5iXpVtOyYR5wy
	 jD12kOwteKtOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E008C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327439357.18753.15219967338712644435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d94830accdb04045065e15acf496978381edc637016a6544fb92572076412e3
Date: Wed, 23 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753274393
