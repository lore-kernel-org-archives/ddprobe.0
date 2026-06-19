Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A51313E36
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781831794; cv=none; b=Zu7aJNsXxaUyTdBTEBluqlF10KWWEQZrps8W+Ds3A5YdGDrRzAeMIKegW4gvKRIUP2lrSZv5xdge9JEAWCwdJTQ/FlwyFPaEVYSCGvTgLdKcPaKFJQKwAQoyG5IW2QL6goMUrCeL8HekPxIVKJYLWQ20qiAnCbS9ozbFgrUdySs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781831794; c=relaxed/simple;
	bh=DUFNM8evC9iQxjs9uXXACCnf2v1txRz07f3B7YWgvpE=;
	h=To:Subject:From:Message-Id:Date; b=ocJzKuAPJ0NJ7j2Qh6+xYj9ea/Nfzj0LXuhzthe7W4ITJ+EO/mbnMqn1DeaYzIuDcWBOzRw5SEj+2z9N2Lh/yCC599XxRzRSGIAgVJQ2XDq3/BIXRZBb2H+9N/Onj10vIhEV0JDi1t/AhGzC7o9djraDusM6AYuQgkXOD+fh7MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naGdyQsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naGdyQsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9ACC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781831793;
	bh=DUFNM8evC9iQxjs9uXXACCnf2v1txRz07f3B7YWgvpE=;
	h=To:Subject:From:Date:From;
	b=naGdyQsaevpkIkgpxi/hBXK5H3WLC6rPsdSsJ/12phld3ndei25ekLxth9NIqThvL
	 ADQ7URLUAqvZ1ISN9V1zHLFHa/Ufp35vIBW5FOdz9VVgVf0bFoHjYBLEES3ZpI5Whw
	 pe2wAkf7eFcfZk9Tj+xA+gh6pNZWX4aok5XkBJjlRNo5F99emX4tbxmffSF2Pq6Gtl
	 p8jaissopg7ze1F+IUj2/713xGLG5eHm1QclrDk0XF5friV/G9s1xF1DAGtby1BRQd
	 jYvZFlCq+BPi31b95qp+a14aMerSL/Jd4fOV9dkY8RnwLQ58Er/CdVgJEjfAlvGooI
	 tTrMfkgLtoVqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02B1CD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183179368.17899.14326957970508703943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56592574b3b418659df3a1c75f8c6a6072c6a78ed13c40a655c618aa5ae7b783
Date: Fri, 19 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781831793
