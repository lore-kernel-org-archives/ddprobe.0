Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C20A1FA1
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87E6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688802428;
	bh=0o02NeMOjrNZBzJGGxgyXoY1FqS7ouu5EpZoK+RXlIE=;
	h=To:Subject:From:Date:From;
	b=bxQTS2Mi12wR1z2NNn1NT0A/Mt8Tu49KyHF+IY6cBJbrU3z9WCk4YJymBS66fRBFZ
	 CpQnWPdVKdyWC1bjCc+RvC/ETE7byRACatF5jM2wTiTKDAwi/9hsQHTFt6tZLVtWY6
	 zvGy3P2YLBP4oZKhQYU9NFVRaHYrOtSzN4d+LSVI2RpzH/lbx/qWHfZnkk68nSbmsq
	 U5IEZQnX7tQSvPNvQs6N7Jqh+iTq/vUi2L6IG4mU+5yztGWuc46LfVd2ThltCPpZo0
	 fmtByUJ42l2m93uxEPkZ7PPR8YKAx/lO2GhcCsEF8ldHh2WpV779JYHjU2zauwGO5m
	 WcFLiac6ClcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB23DEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880242867.29293.7286027124990465594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561dfc7cd088e4faf5d0610f3dba6e68ca631684644591b18bee2baf91bb308a
Date: Sat, 08 Jul 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688802428
