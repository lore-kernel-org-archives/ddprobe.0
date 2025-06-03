Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF94190679
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748925593; cv=none; b=XuHnxlre/WEj12g82LDtUa7sN0LJOkGzcVJhCk8oF+EM97Yv5ZGdPa44YYb9L8KTVVKblaW2JpXbvbhzPa/Z9geoI6n0kpz+wQKd0Cg6SeM0+1giCGUUJ8LaQz/RLmI6m/9EZp25sHwqvNSz/l2uSbOtN+KMB93fR5jsM7afEd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748925593; c=relaxed/simple;
	bh=XRsMfnwstFkms1M8IgJgkZ8zG6IqOLutfsXlnOwzmME=;
	h=To:Subject:From:Message-Id:Date; b=U3A4k7c8glIxNESNJu8VFQxPg4bODGx1qlNrRO3MDvNZF+Df7MWJUxjWDwxoFJpRUV9SmR7pis89d+g0rW9m/GLS6yYEUCLfuyM7m6CxItEEoLk8bPwv7Ubl6zoM+IPDsbk/EGUBKN3WPJZLda/yp/Ad+9+dMj8OD/gCJZiLFW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npdcYIPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npdcYIPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748925593;
	bh=XRsMfnwstFkms1M8IgJgkZ8zG6IqOLutfsXlnOwzmME=;
	h=To:Subject:From:Date:From;
	b=npdcYIPeq0LJ+TwEWUnrfjLWM4a9xAz4wjn1R+Ns52r/TTBXy6D75mjMG4l11eNJR
	 UQZnQQH1CusA9Cc0qDb2DJRzeaTB9MO7cW7x1I3T+8hv7WU9UyMuX/Sn8Ri6opqgLE
	 1d2ACzVBfJAMxkrdtcTODSCyGohvckzctiVR9cwBGMk3IzNCWtO0ccu8ve1eqCKbH/
	 4machB2y0giyDHXIAxb5C4DtrgJ4rr6dBi1mBd3V72HsWjlLRPHUCmY6stglguRwsw
	 T3BruH4j0xWuhzehSTr6IM1mI39jF+OMogYs9aF1GzE1S6EbHzhZ+Dq9KgRkqzELon
	 8eL1OogevosyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91454C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892559357.12619.1838784235099757973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dfcb7ba15ff0deafbbfee351672bd85d2d0d4a2015a25f94858e0fc4910516
Date: Tue, 03 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748925593
