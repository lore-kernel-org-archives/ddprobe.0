Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF2822256C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753808994; cv=none; b=FxqmKjgC96OWotyg1ZgGUccmXuVaIlIjTdOvg+2IoqOrWYOYBRfP6rDjUNIvvX50l+SATEJzZDLRmYo/TExbGn5vl5AMq5+5YGXZrzm9Bm+d+BaWk1HxArgkfwD0KnTWeCR8hqD634csgX/JWsPYhDxa8hHFkdVngkYlDoCMEqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753808994; c=relaxed/simple;
	bh=tdcU7MrQEGCwiodGLSFy1gV1nXFE3QNcaFHNwVhBuZo=;
	h=To:Subject:From:Message-Id:Date; b=Ixy28t2PgkLR5HUg3V3cvEB3lnQ9+oj91jkm6+napE499lkI0H2DLj6PS0ae7EEjiim3QRDA+st1LEBsl+YL/oIlu4FASH5JvzZj1JJWbG3IVpoCZNC/2NvoA++RS+6tmhzeTiadMrAF9UuEQvQPgtS2nJW6aIUYJvM+DQocsg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcDZLeVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcDZLeVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5290C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753808993;
	bh=tdcU7MrQEGCwiodGLSFy1gV1nXFE3QNcaFHNwVhBuZo=;
	h=To:Subject:From:Date:From;
	b=RcDZLeVtrzWDrXh4vGOQS4449H2KfqKBKQa3RyhgN1ms7krOUhq9FPFfKoHxYk+9E
	 dY9dPyrm72+2K2ebmd2yM5wG0J5l2wC4POwey9T76w6ZoeMQy5vWpZAEznb8tPwtPb
	 OmCiqiSVPT0MR1i88xtWTkRCub/mjQNgSDSK2CqNBYy8YfYAu3jchamGsdZSKbD6gt
	 x61xlgzBOZTImLEthP22DTFYH81fntpiaaV6+IUdmuHkOxLIEMoZZbE5orpvYjisDl
	 VwpTNjqtt7Az2M0B4+oTJLI9kEEM/N7BS/N6HTKAuMXZY4c8b2g5kPcpY7LvQ2yX24
	 zGxhJNU6D2bwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C93C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380899358.31693.7951540160637982170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667fe052e63982b600e9541d69551dc39f15ea45621e8dc571a93c5574ea519a
Date: Tue, 29 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753808993
