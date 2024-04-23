Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7313413E8BF
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713898823; cv=none; b=PpPKyOyQaWk7ecSRUGHpRALRXqP1QWfSfi/aEzbjRpohPgXcHKf5+awc3L5xMFWjB6bGOvrhU6Uaj5lUteBgJ4YQRpg7hGGCXSFMHnLpAyAwO7pjbaYop/HHM7FE6IXYj0d88iO3QpFPwx4WkO+biigAFmKo4DuefeFMZzjoJ7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713898823; c=relaxed/simple;
	bh=A20Jss18Fxxr6NMshGlCdy1kat4+xRUpL5GUoIqEPfQ=;
	h=To:Subject:From:Message-Id:Date; b=urs4ugmKUT6esanmTucPEa3flAphFDo5/LWjNwKAmSTfig1gjRHzlSuNQn7dIwpw7MHUFUyoqFexSK2uhz4lrmXCX6d4vFhfYvDFrm1swFwuz1BENUy+EAdH0AyMxfC+fhYhUGdX6fPt0V7BhMHzkMJrfcLAPGCPMva0kYwu1/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ty0lu5yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ty0lu5yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E685BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713898822;
	bh=A20Jss18Fxxr6NMshGlCdy1kat4+xRUpL5GUoIqEPfQ=;
	h=To:Subject:From:Date:From;
	b=ty0lu5yqQDeYSRrtUuHS2TUP8GOq6CBI+s1he+L59i2QksZNiS0T7avWtjdK3Q4pe
	 AZuI5BO7QOvV6AFejz08xuML/24eGxS6RtWU8weCnx+x4jgNVGuDGfYs2Ysh1Xhkte
	 9GbA/vNHVOtTrWF9gwIMwYmuBvdKyTwjFP2gi5qbdt/hHoqlC9GenjSitwhv9ceOic
	 phR2Pf/9wA1Z/3+oP3NWSEo/5P7UVpWor1P8N88jyBRac8hETw/iPPiy7uHJ0z9qPj
	 BNWMgQa//0NgRUjnKcDggJX0NV8/5peI6XkmJvyUbMPzHhFEHg3jtb09dUNFDUG/TL
	 4h15DEKlZheTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D048EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389882284.32018.5549184012684999509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d260ef94c1c4c162859669f90c5f85636c9a17e1a35ffd80cc0679e27dc80c
Date: Tue, 23 Apr 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713898822
