Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422841D95A9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737799554; cv=none; b=i4RmdDZt0iokNdlBqrVp/AtpwINvh7etlQ39fHo87fKyh9I6wq9YIpzLDfvRfhdFXjOc48/F8VncBkf25b4+d9QOgL2CR4dmg0fANpzkou8AlZOQ+Brx+JKCI8MC2/AZTFlyhRORkJEJhwjJB9cNzS9Rb7QGp5dkFUgV51N3Nbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737799554; c=relaxed/simple;
	bh=HOCYS5HSEcRKhm/HsicYAdToqURYLW8XYvfzUPil7Yg=;
	h=To:Subject:From:Message-Id:Date; b=f+Q2FiXq77B1GYX+D46KRmwDC60Gonatu4LPukZgDT0KuXxbT3O7v+AZnRCaP/RzDwnEetxdKCoBU7gSK5LK6ZLYhoDzT1wo2vYcRapmvCNxLMs6D0R1XZO+Adf18Q/+uHLZigy7gX0ydo6TQh+C7YFU1cgY84aXkf/K8H5t+UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAujlfBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAujlfBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2451C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737799553;
	bh=HOCYS5HSEcRKhm/HsicYAdToqURYLW8XYvfzUPil7Yg=;
	h=To:Subject:From:Date:From;
	b=PAujlfBYJ2FC6SQt2xYjbVspKTCefFz+m4QoEQqMYoG94cojraJH9J9g4Tpq0SfiI
	 jIV1zDHFH30OCNBQ45j7UccPg+o2FRONyxbUh+fZ5o2r8G2J6OTLZYaQKr/++jfnxi
	 0gyR1h0mDdx0em3qom1TfA9omdkxrEaIPa1Yhtbjl2/8PY3VEUEv5AdT/XM2dIsgB5
	 VMsoY6VEsS2B6E0E9SXN6/Wh85i+DEkTFrUELvxObUJJHDty5vWjDolt805IiImKpd
	 wf7T1CJaH4fn6xbQghyHWCj3B/KKHRk7RFoVNtTb+wMWXHn9s6XSfbR5F6vVrX78Qz
	 B2CPNYgxrWJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE4C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779955359.23929.1673613833513054331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8385a89abe10fad13ee287739148594368b87093bb803bb0e0564cf89373211
Date: Sat, 25 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737799553
