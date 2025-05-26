Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BDB28EB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748267994; cv=none; b=XbTvEmInHfZZO7RT+7Rn3sJ78pbk6jXAmu+AT8xmkIiv6U84K77zw0y1WtHQ2uV1OcDXYpbllANks3Fb7ko/5aH5GP8Akgi5qWtJchBlt1UOvksLRRJRiGX4V0lqMRXKySPy2OGiikwS13JEpgy9QfFpQ12ByMvK2CdY+y+H6ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748267994; c=relaxed/simple;
	bh=Sn75eaJuXPM0EJDYY+BgcSk+1W+62k8sAu3dni/Um8Q=;
	h=To:Subject:From:Message-Id:Date; b=KVVB1QTo6ee8tceXFsFB/tQZJQjgnoNPqDa1lXnDrBWrbLGsMFwMz/O5sHoNd0UufwBWYZd0HV61H+pOIprlPi7lgMJDGp1QCUDilfFEj9W7T2DlgQZu4lzEEw6oTOIEt6LV6/nywgnopKh116mzkvucacEq/bdGwZUO2lQlD+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSgApUhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSgApUhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B8C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748267993;
	bh=Sn75eaJuXPM0EJDYY+BgcSk+1W+62k8sAu3dni/Um8Q=;
	h=To:Subject:From:Date:From;
	b=aSgApUhG8fSswhJ4KsT3aXQj1Zbzc5iHNC8l5ITy/yP3NPMTBD/UdG0EDqG78MVHv
	 SfQpWVdJUNDTJ+TwttXM1rlso7G1Yfyk8jHDrtnVT0jAFkDptngK7uzEZ+5YpXDQ1M
	 rkZTDYdM4H3A4G4gc7es3Xp+r5W3PcUvLx+4HHzIFJczycXe9dDhvh2daY4DVs2iXp
	 tFVqLHDHRN1SVdxvc+6bzUoDWWiFIscy7kzqXmksfG1yIrY0/cco2aL14uIo04hMdP
	 cb4TNtJTzXcjVoCWv9yzqiEBHEI+aLRWn1pz0IwHFVlMKEjGlkIstcIpCkhc6BS/fS
	 b6UoW0h/c/dWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93EC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826799357.19141.15373108802952426042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0172b3d63a15fa4bfbb767415b25c2ff3d04cbc0684cb5e68f48965415391d54
Date: Mon, 26 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748267993
