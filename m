Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F328D1118F
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707116297; cv=none; b=ACqlTWTMD/le1LkbSgrBe+0ePxeQ9Z0rzr7756lZ/bjA9+vyy/uH/W1sViOXoP60k2FD0aVWEbDo/uBiz7GZz19eDr+8Rnkt4Fb1zOqCyK6j2d9mrj7JYVFem2/EqEyxDORkuTCfdVZAVSGO3HMygS+Apps0NjUSSTpSRKkxSyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707116297; c=relaxed/simple;
	bh=yNhBprDXo8gnvPlDShHfxXwMnVeSRsXTgElTRyGjDM0=;
	h=To:Subject:From:Message-Id:Date; b=HS8O4oBj3dW/NSrj5r52NxlcwRfDEXwra0MbCwHEElNGPo71PAaDh47Vv1vvGJtE4nH8xJQtyhsSkZvLgnQJ6yz2dvz+z36Q7g5sV/EwsWExYwjzZu68lFR4LbFJUEfe0hC3yQUlxjd4/zI5S5ejfZFpR/femKrxMuuaJ2fQLN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq59Lu5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq59Lu5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E18C433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707116296;
	bh=yNhBprDXo8gnvPlDShHfxXwMnVeSRsXTgElTRyGjDM0=;
	h=To:Subject:From:Date:From;
	b=oq59Lu5FYtHXu95N0CkYVSBGVkTEsWY2Qc7fdRUwn3Z1SQ0OJVN6IollvgC/Xt88Y
	 nYNzwQUc+zoyURq0EIkgvF3pVDIzBaKzuFtw4OsM1Y295jT8Q6B7DK09TWSy/PeZzl
	 AcWhYOty6nkEbM+O7IMJEykER+PgO5DG7jLzGewaUH8oLCgdBcXoVpwSm6U24MNlVr
	 OG/dYQKJCQ02Esn75CR8OJn3LDlwJMwLKTlKfXoe6W6XO9UxPR8qDcW5l40p6/o6JK
	 Vwnjrb51dJ+/rUButyxrit8CVwVhY9KySddYXE+zS3qvJjJco1VX0cUFv5Xi1Lf5mO
	 Z1ek3I5o9qCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1E3C4828D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170711629637.16363.2344468356329078102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2db4648e76853948ffe706ff41923f74cfb1834dccb0711ed6be72b60e3941a
Date: Mon, 05 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707116296
