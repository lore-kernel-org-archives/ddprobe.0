Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4024224FD
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748386193; cv=none; b=MZKIpVh3iiahA5ajgZCO7OU23BIJNLzgLuxAErWRdioeZtWzy7qKxSjFjo2bYAqXz9RVokJiObfbuvcSO8Wf2j5yb2bRjJQPcny1MkGjn1ef2nHyaLQIOg0PCyeX0KX40u6YLEPGoiWHT+YbFOxSVAr/9/dZa8fj0ZeATfKZTE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748386193; c=relaxed/simple;
	bh=EoDrxbpS3LBp4Boec8V1KZjveslDH8jhuiSV4nNFGpk=;
	h=To:Subject:From:Message-Id:Date; b=cZS626cih6St64GUKGgE5/qFTosJJj4y0++FG9gJ/cT0NxF7d+PbQyaRzXFoEDIi3HZKkouvFN1HqLt5BBOpQWZoq316OINCGFHak5S2ADnhhm+vg15gga8HiOYx1LwOMPkZyFAH6KOVQeUVmotzlsEhRO/E9fz1RKF2Xa3g0AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1mIxGWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1mIxGWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5E2C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748386193;
	bh=EoDrxbpS3LBp4Boec8V1KZjveslDH8jhuiSV4nNFGpk=;
	h=To:Subject:From:Date:From;
	b=B1mIxGWyOnIlWDR/nB2lzVQIjrp4MeoUn8+E4zkiUZ3SoyD5fWRWj04F7UULOCdMu
	 jgkgZ/Hv7rj6aP/2nxMOmI47dDFRgOBTfb34Kf4y89x4NgIY+QvbJmnK8CDI3ZRez4
	 rrHyI1YPR7oM/IosPp3EKAIdSdgbbNl/gAk9aivgOHGAFvjg7DKYCdrOBH6Y6EFhC+
	 lgTFtnI9AOq+dwkgCvpsMjuWEdIqVoNwBkQilqtkfrLcPI6WcWSLLceHnzm/0FjfJH
	 hrCHQmy6RnK05kKfMeYg83gBIj+zOZf7ZW0stQa+C7pMzAdthzVphRbUy2IMgOIzUz
	 AO22+hwEqY1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F84C5B543
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838619361.31357.15995533593921774745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312ad9e4f3736bd774bd0b4a66068c847455334fc36ed4ae867e09b23aefbc18
Date: Tue, 27 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748386193
