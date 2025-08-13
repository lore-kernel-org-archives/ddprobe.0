Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216142110E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755062394; cv=none; b=fZYsf8i/hg5GTT2R54TdQOeZjN4C78DL0QZQfzUkgbavKG6qN4m9NrouSNkEjay+W3bs0Nq16XpB/Nby+HFMVYWzHPRcgSB3M+YH/T8/wjBni4b6q5GbT1avyKBu5+TLxgUiksWH9EgFe5H6dcbg1Gu+u6eoGtI6IWpWqwrDUbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755062394; c=relaxed/simple;
	bh=vFMlo/uTPVuDpEgKQ1d5joIgZdK7Kuyp/Hyt9WnnoNc=;
	h=To:Subject:From:Message-Id:Date; b=cxb/aIkvbbw5DLQD9+/JtmdUc8ygE5Lutq/7xJNroKuC6WI5jC7f0eUHskWyFGs9KhnOi83MvFxJf6J21SoepnwbxyayHU3W3Y1vWK5Of1eAL3CrUvbhm4+U9C39duZVlNw7ThXwY6zK0Nh0Yz1pwCBCe3h2QorkYO8tFjlYmVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRv2YfI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRv2YfI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755062393;
	bh=vFMlo/uTPVuDpEgKQ1d5joIgZdK7Kuyp/Hyt9WnnoNc=;
	h=To:Subject:From:Date:From;
	b=CRv2YfI8VHH4VRK5rc2rJ1tckT6M1BefPgWBrhSzkY2XxtaF/o3huS1Il/UnJLjfN
	 uKpy5YoEoeld+3ORHlFeifB2IZtym5iw4Fu1Qj+bEp4n1Vu+zGHvDv+4YGUIfOLAFZ
	 5XmC6e0dIOe5cVraRxVmsaS7poieCKMnupeq0wWYEWhNehQWLRcBr6NVlpY7il/++o
	 BpG9UYZbsNa/e1xDTA58rlDP0OxE2pJZ0EWYBZtbnc2x6TBv6HYntGunveQXal6CiF
	 0OUYFRP0R8pAPw78XQxLYhFOryIxLNr16guTpdRWYeATjeFH31gwJiH31jQVur0wrB
	 YUzuJc8/dQlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B3CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506239357.4992.10573658147750326839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812938f72bc711e72c459549180bf11b94b6d78de62b248f9957029d57e5b9ff
Date: Wed, 13 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755062393
