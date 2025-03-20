Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539340BF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742434794; cv=none; b=Cpp8bt5zUST8IvaDZP7FebdgC5AGUq7fk6l1Tq/lLaDC89t1QwioffwqlJHqbyT/XwR9QxC4wKxg/YN1/vrl6Z0qJkL7vzzZvHBi+Q/cBC0LdzdWKF8EoLx2Ykb+gTj9M/MLNCVj3TpLL/Mmf82n5lqt0xXC41tKAZYIycrjRb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742434794; c=relaxed/simple;
	bh=jH+kWPfi8qZnNx3VFSft06w9vCz6mJF/TlIJ66wXd/M=;
	h=To:Subject:From:Message-Id:Date; b=U0G3IJGM6DP7LWxCzfo6evyj2cayH4NaP2q3eFErCjuAAh3uBZ0Szyr/olQbovSM+UVxRXXyBRKl2/8VvtPZNV4VfT9WDljuQEfbT4VtXnLxdyis3Kr2e5dOx09kFw6dxNPuXWQVkh3tH5mD0E9hMZCvaFyY/p+/gGbXOAWA9tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqtgrUNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqtgrUNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C63C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742434793;
	bh=jH+kWPfi8qZnNx3VFSft06w9vCz6mJF/TlIJ66wXd/M=;
	h=To:Subject:From:Date:From;
	b=RqtgrUNdusIO+FPb6FilWqkhPiJUZ+E0H4ju4kw8hAdzOZK0JMKDbHqXmAUU1fHF4
	 mXKrx5iHaDzowHFjYj941FitdSTkvO2R+pUfAeldaGZsLF46jMiW34lGnku8Bnk5Ks
	 /HCoRCXZ/1kdc3Pxza5ElcYLY2VgOh0nOUvOuL7UcvNVRc1ypRAyDrMtL5Ob7wqE1A
	 VRnv/WuAOLeb/d6J1k/hXGIvp/RZwMf5Z7x26sq6MYColDL7P4OU34KaGVoTOMf0K3
	 FtUboIp7E6PYFD0igdH7sPgIZxFvcTakYVo/ghucJk/W4tVQuuWDSFCID1tojLKBA5
	 aE+X8qovSl2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A731BC35FFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174243479361.23362.3043855511009955956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7237be4976a8cecf454148f40e76174b6b08244adeea5c64cbfab35bd41a15
Date: Thu, 20 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742434793
