Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D870C37160
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741062533; cv=none; b=ftABWMquTaKwIofvIBDTcJd8nTKSb2Zm9H1mq0Aw1cT5S02Eqhm+k8ll10JFgwmD5j/KiUHrt9otkmVIRIEIeARaUVkZhzEDscRVfoKY3sQyf0kYwvdODZ+U2oybAHzLoS5LGv6yk11ArTkgJzkT1daOajYhYbvOwjM3h4C0hpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741062533; c=relaxed/simple;
	bh=0ONu+GtYAdAQfldKrHX/vM9d35/fPOX7xAj4LPL/zQE=;
	h=To:Subject:From:Message-Id:Date; b=bWZUV94JzQusF/BCzfRK2Vot5b/7uQfD7ql496TtEa27sRh9NcJtz8mnjN/IiHtpWuS8qQxwRP5WyNTyC5G5MBG8sZbEh9kiqFR6BTGl197J1jjOkAkKQfJX7Vc2gVM+hFuFofgVnHGWD9rqmJNOSahV2p7tFcbRLIYHjUIxMaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSeT4aFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSeT4aFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC8C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741062533;
	bh=0ONu+GtYAdAQfldKrHX/vM9d35/fPOX7xAj4LPL/zQE=;
	h=To:Subject:From:Date:From;
	b=RSeT4aFglMxE0aD2yMXTb5q9kN/Vw+C3ZFiSCtnQjU/lMF01YYhnIz9alG7Iy1xfn
	 JYtSrXkrBtOMaWls6PZB0viunQYB1lAEAnVFe89JDK80yssfmwwT7Rc0serDWjD7L6
	 r4ZCe/+4F4ZMv1sDSnZrrCAqrjhIIWf/2W7jaY4cQVx2JLoquQSflO9ToPuJfXV4YC
	 L6MK0si8vMqiTRn9GbHabZY3uC5xOS17vLzBZohDB51+10Mv137udfGQshb6DxzaST
	 sIK2R3D8Z3xY76RvoVlH74mj4N4gp/B/s4mK+bbBnX8+1zEJwaPpIzS5P/08da2jHw
	 rwiGQ2OyUPHuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D3C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 04:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106253361.22442.6487008490025499571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88bda6c76260edb594927457378fe3cea2ee0e539fb73b25198093eca1bfb465
Date: Tue, 04 Mar 2025 04:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741062533
