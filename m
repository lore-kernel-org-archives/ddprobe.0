Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25592CA52
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777866454; cv=none; b=GCV64lsJry5UoO9E3DJvWmAjm041lv3wWkjcU3C/fwha/2wDWywxb8qrAuAam3gv0QHhwvQE9RBzGzSJO49+XHb1b1ybdjAY6WMnyHviNSk7hma8ohdOaWAQ3+DDSvHBUtHmOeO3GLObttju9UQ+oxWJdhhMrDHNP5OLoxB+hp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777866454; c=relaxed/simple;
	bh=z2gH2Qh5MU8TIh45Ll1ZKnzJZu667l8R3DQfJ0eeG8g=;
	h=To:Subject:From:Message-Id:Date; b=nmsbjlUc+hMtbb2mBtqyHLSiZSJ+UaMyU/wDiN4RvzlTdwv3JzPDDXDkiFjSREC5nvlQ33gPIchn7jA5PozXvQUxLeqFEJV0YWljH4sIjL0ozYQO+oZxS6ezIC4Yjg34fshzFgmGhiMtXpwaPFVFFhNB1GMw40KB0jUJ06ifNqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2gVFYIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2gVFYIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13E5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777866453;
	bh=z2gH2Qh5MU8TIh45Ll1ZKnzJZu667l8R3DQfJ0eeG8g=;
	h=To:Subject:From:Date:From;
	b=Y2gVFYIiWq98EoahiqtnmFa/wV3E2tAMFEDPNaytFG0E62EZ1d8lY3Ze4kZ6TbLss
	 VJkwxzDOpXsV9MMLSzXk/xHqJCCA0yee+2o+7QJvp/D6MdbtsJUmwMUo6Wy9ygKhAO
	 PIlOkWlNM4fN8ERz+XQsR5lAKHL3Iw6byDtHjeffab46Vn8Jc7nr/vqDGnjD772Ka0
	 NfWN9u52XTqKhz+vW3fJAItmsrK4AxMWLJo7xuogQSzPEzaUQCfh+4dVwqXtMgjDPc
	 SaJce9oWs41/pbYsxLdQg8nU4UQfZRmcqoUKc2nRmpSzcL1PbUznf9k+OLijyBaiUK
	 we8AoyurAmzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B025DCD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786645368.21359.14593548252734833722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7601f046718c5088c34db4bc9acfade7f646ccaf817ecd4a7a34d264e1278ba
Date: Mon, 04 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777866453
