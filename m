Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219E11E25E8
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754547594; cv=none; b=SlYTW99dnDDKYFb3ABkKRyqdYEWb4lVMSua2bTosGQJ0tc/1Thp6pxxXJ6A72Sy/hu83++N1EDUXeRZ2NoMurmIbNm/dnUZCFD1Fup2zs803vA9sTN7yvdLXevYYTkMbVQ5CSOgE/d/wq58lAYMPSDkB9nLXCGNEXhMqnMRsoxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754547594; c=relaxed/simple;
	bh=xgCHPnGZOQ93UdVCv1KBL02s0RQEt1f4J2jqYevwCAY=;
	h=To:Subject:From:Message-Id:Date; b=c4Q3JlubdpOe4s8GM5wH0HvXHyeDthU9s95dyg30UgX08PH1o59/qN73PwiBjlYoXT5BDinHfJhtgGvZeq78r/zPVpAZao0xO7J+uclYX6e9elhopxZxyBjgDunSrc9vhF+TTwtz0VcrFQ9fT+sbxiIjgVynUjz5c/gD53QEaWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxo2Tp2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxo2Tp2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1021C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754547593;
	bh=xgCHPnGZOQ93UdVCv1KBL02s0RQEt1f4J2jqYevwCAY=;
	h=To:Subject:From:Date:From;
	b=Uxo2Tp2GnPvYPo9RNnR9w6iFOJchyMCvkSSaGfbZ9/hG8C+U96Pj0KdVe/jXoX4G4
	 WD/tmJffEiYSgkZlICHCL2j4h/79n5bDJBePA5iz5TUN/TaHnM52Of3YjzEQWHsxBO
	 WupU0Bf6VPkVPzcNHSYNgeRqJSaBtEFVgoWAHMeCKcFYPb/F7PhDEWP9sUqc6oMqoc
	 C6od/qyLoxI0RHUierh1/I32AaaMRwXN7M9OG5KyKmFNA9aXg7F+ZE88trdcZllmXm
	 QBJQVXJ9bAuG0L+Y4+d6Khfi1r+LpWd9q9P1xt+A/NvIIukFo9Cy0jFJQG7ghA1Ofl
	 pS2rwIITEhW+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBEEC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454759357.16590.9466863335542761486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744c7b356063d15c52bccafb1856d7aca015bd21fa8adfdb3a0ee9c476459805
Date: Thu, 07 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754547593
