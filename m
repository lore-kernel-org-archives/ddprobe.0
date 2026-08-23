Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5663A2147E6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787449834; cv=none; b=VopnL7prbkSJxLpqXA+6Qojl3V5OO1wRkFGQISU0tFfADo9+UgOw+Z/JCqZDoaZwTiX8kNDI1cmwSkO8ByQvfE6jeAUI/iYS23b+YWD7bTUbW3PXxd+hu9/9s7TMAtWv0MxTizD1hejiuSkocr/5XJtJKigAzs3pm0rDOKDttQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787449834; c=relaxed/simple;
	bh=Bhd8ptJDkUa+2W5doEkNEDIEW+dgUaMPO67mkQpyo3Q=;
	h=To:Subject:From:Message-Id:Date; b=RXFYJbc1oyPqLxOBBwscJTdZkfqLMC0bX/4swwkHFwUIIky+0x7Gd8ii0SPkP8J2eKZ3wJl9ej2jbu+9rNiVvrc11Eb1xFMQFVT1Ny4aRGXEhp9zJ0QK8OjVdYshqM/Sl3vwOFE9ZdsInfl+9SXk4447gtVWAeDDuM+8eIigpJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qm9uscO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qm9uscO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6D4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787449833;
	bh=Bhd8ptJDkUa+2W5doEkNEDIEW+dgUaMPO67mkQpyo3Q=;
	h=To:Subject:From:Date:From;
	b=Qm9uscO/2N1ru2e2VrHZATlUzSjQ414HQDpd/OvNyG1+ORkEbceDqPU6VsGH+bqn9
	 vn9hHfd5EYwUifrURlF9WEN6IQi/OA2JJCX9CFlj8tni/oDtYBub85Fv5Cc1YTpr56
	 D1QnBxdR3tgo51Ts5yErE1gtq9CUyZq7uleGXF54zO9zxgeMoqqVVRZtDjO4LnmuJ1
	 juK7yiXRICNfjcKy9Si+5NQ9OVNq/X8hHwuQmwA9iJNxgBrqISMTckICLZstoDtP2W
	 4925KTogyWabil58RqYldQfHxYH62YKVKkCrYu/e2Zq59AyFTvx6L190jmCRNBb0yq
	 xuAC03bp+V2tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B630AC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744983370.17032.1842320068864830962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f56b3001b410234646858cab7429df964e44590db64f36e8c0fdec6235c9bb6
Date: Sun, 23 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787449833
