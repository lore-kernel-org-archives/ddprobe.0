Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4046818B494
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741971534; cv=none; b=QfQtDzR2wE4yNUrp9c46O6EcxkNYrUVZNYihnV5ASDMh/HoGyV5lvn1qj4c0sNiZA0p5vov1tumPMq1aNe+fMksJndnqgZIKaDMoYB6JtBEj37Da2NWPjW47Q0+5wcV7Q1xqgd+MUbMd1wvvkf697fNS/UvbP394KqXRjRk20qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741971534; c=relaxed/simple;
	bh=4/NtQvXy8c9jjUl1eM00zpM1RSKPJorDhfBoCZQXYf8=;
	h=To:Subject:From:Message-Id:Date; b=GtC3WYo+Wq+c7wPvhwQgHyYvd0km4Pa89G70qOxmDRlrws/BT0vJ032Cx+RPO5Qhu3EyNQ6y4emPoX1cZr/xkvR/A/mb3GT7KF16AwJZmCm6CjKUdCrT2Iun80yPYJT44asLOKYQRHACFLwLr1KB4WDs5h1pZ+7OhmRjcFNJU9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMVctLNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMVctLNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B018BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741971533;
	bh=4/NtQvXy8c9jjUl1eM00zpM1RSKPJorDhfBoCZQXYf8=;
	h=To:Subject:From:Date:From;
	b=LMVctLNIEfq3JHJJx5LQLAkXgIk2oCOA3DWpFQ6wCLCrLuTHx0yM3PVYW8rIWj7YF
	 BYF8IBfVBRmLzpExkys+RbMdfOv0l0Ua9igAmD1mDn4Wb2frG2MRzPSkcyreOHtdl7
	 b9luYkAfG+J+gBHcj8l9apohF04S225G82zjCcZvlRVIBqzxX3x0aKGfLVz2yCuyFN
	 3V4d2hQYkR9sa4M62gtjRkPZkG6isvB6byNDwZHl6dpP2I7Y3aqpiquTySWlIb0EB6
	 pVKJHpxCHVaVgwsYoWpIdnQdv+6DSf2Ze19worIG8oy8ruzVN2T2HtKPOgeu48CDTt
	 wGgVg3E9yCZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B139C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197153362.26676.11569725734719098266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8b790414ce95af83cbd733e997e816c6788548247741fe6ea183e61c48f6bd
Date: Fri, 14 Mar 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741971533
