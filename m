Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3C733FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7893CC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665176453;
	bh=SVz6U2yXOPskV9Jz602w4S0VclhDHoN8aUIlDI0HtxA=;
	h=To:Subject:From:Date:From;
	b=Ztz1IIKo+KKm4YzkjBNYJ+spjw8EeWc7+9mp8k33ZA8ZixPscqG1FKF4PSxEOM69S
	 NswB7bGHqEOfCaCLgCaW5iv7d2qTKLO9+9YyM9kI0m3LC7bicSn6ClMXeqF9IKtB/K
	 NDnnAxuhZmaCDZt5Gjhz44WJQ2UcAwV6o/hlN2v/KhEYVAW5k0WVLWQhh48eaMrlBl
	 boEK7HL3HQh+EKH9VYnQv3YmwESEbDFtl72g8kB5mFPZ2HF6rSZaQHiSuE5X0KwU87
	 9RWD68a2xnaqsiMVWpJQdPfY8gkutJCI70E0fFAeBAyU7tDwTGbIIlMkj7o1g8XtAc
	 Aqw8jTZ3RGVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E40C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517645333.936.6348625394151362230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727398e8105979ba727a2a461c94e615ef40fc3e838d055072e3c94e90a09e28
Date: Fri, 07 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665176453
