Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4743AFB03
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784279914; cv=none; b=LUUaJuOq7WRUraXcCilOY1wSV6lQJa/eXuPugIxBXhjhBOjye+Cpvp0s6AoLdazufX+GcTbxlZDHh3SaP0oQdIoFFlhYnFTzl9JRfuIDuTO4sPuo2BmjSPiqjPY2+p+UWgFqqTnnxHsXasLMs0Au1gk+CigGxTuzcEh8l3MNDmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784279914; c=relaxed/simple;
	bh=3ZOhpiPuS2gwys3bWLOuikhGK7UEhMOWdx5GDL/u9rQ=;
	h=To:Subject:From:Message-Id:Date; b=ptdlg72O//HlJB2zsKYnjkwDc/wasihv81bRXyp8rowaVZ7vSodwixc8NiE0btOMCCvv5UdDdX4RLb3bCaMC8k0hEtm2h9WI3JSyBNUFFiG9ca3wcI3SPaPlOB2XZ5R1h1OZcHLzy/AtlxXCVvEzu1+LQgLjwL6LveVaUAYq+Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7CqJgrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7CqJgrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA36FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784279913;
	bh=3ZOhpiPuS2gwys3bWLOuikhGK7UEhMOWdx5GDL/u9rQ=;
	h=To:Subject:From:Date:From;
	b=T7CqJgrCmz+uoKtBxuwTYTfZg10al6Q/E3orPJqOAvALuLJnga7uECLoQmTBHtj0j
	 tDOXRAcGRUlTKaDK6Gyfpb3JjHX54Tir+fDKd8iw1bSBzy3ZtuWWpBacaXzY6LHYpL
	 0oVKPZ3Sdb7wktLyzDFARcR9AIw60I8BYUyp2BZwZA76ESKp0cde3oKCwc98WxP5Iz
	 6Cihk6Hgr8lW1m0qCPnFToejUkquYx62g6MlMR25tf+f3ICQv9z/RnAMgkIXZE+Y/E
	 w/v/WLwLExbprDb4fu/t5kwvW4sA56TMzm2eaws5RxSComU/TRLh7uB0e0oC9KM/JS
	 nxHRRcduC38Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47BDC44514
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427991372.24476.8019052222169118480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9fa538e30fe14cb42088a4b821f6a0f6555a8ad1ee3828c78cdd97fe27d907
Date: Fri, 17 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784279913
