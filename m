Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8BC449B03
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790614834; cv=none; b=N8agVB2hMSntekGamujO4vOtGK77NyJZdoBDoDARYfUQWOzJ7MDBc2F9nDLe3ZkcsTNlSj/0QGi7TVD4ohtBXjgVbAJmANJrsIXRmyd5q5p1F5WFy9Ax7+phy/7nuULvgcOX1HeSLfdiPCA7PDr0x01X0VGVH+Uh0uzR9edmv6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790614834; c=relaxed/simple;
	bh=AwYLDPq4NWlzeOXcmyiDaQu/pRfipuWC6Y/2cx7+Rm8=;
	h=To:Subject:From:Message-Id:Date; b=GCKWg/m1Ru+vwC3JOJvB1Qe6JsCwptus7dDt/CECtUDI6OlGnKfJT6ipOMFrayNdo2Yz3RDsuHyZVofH7Vs66aydnzjWIMQK+Epj1mrFNSlMoYgAWbHNeXC31WKiew/TQikF5l0eFWtE6sKevnuS+ncn29Wn/WA3HKlf2Bai8Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQSsemor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQSsemor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E7EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790614833;
	bh=AwYLDPq4NWlzeOXcmyiDaQu/pRfipuWC6Y/2cx7+Rm8=;
	h=To:Subject:From:Date:From;
	b=dQSsemorCsUQobG5oxYbdXaJw7AKLReA3SIHdhmHCWP7y6iQKvEJQy/qKOtgUiwIF
	 iVxKWNw+86MdeQDTZ0oIBztOJPTjg3LL5Apfa+TbxQxUNDX5smOmpnbId8jniiDHzW
	 nnpfcg3smENWi9MIKLQ0fgBmbTqGNau9svWQ3jvrIQjcANJynrIh98Ma4q+6QQimjJ
	 x/7d79Ir6xhchfzsUUL3daIy4EbiaUX91miXri/epTost2M77B4cm6KTQ+wPQSu+BO
	 WIhPR3zHlLC2mjw7Vc2x1aQf6B3ZtGgrQ5GWWi7VhsXnH/lT6Qp9yun3RaOruFKpPt
	 kcfE4JKl9T/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF19CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061483369.27285.14830464819320185540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cc791a406c7972ad82d28870dc872e05af3a022b889d7339ea338491da2e74
Date: Mon, 28 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790614833
