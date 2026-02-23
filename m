Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F5120E334
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771832094; cv=none; b=RBTgm7Pe/ojZOcBnL9beTIMzT6p3pdLyq0Ey/JAIEwSLW9Llth5i9uVH57QqG21AQB4zPUVX9xKuqXnFZm/lEVBYvNL/NC5sfOdrM34aoXcuW8RNt05/fNANqd+gDwv/NF6iK7gKTFG/7Kt7onKEqeYx8eH4w5N+XLEF9ZS2tT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771832094; c=relaxed/simple;
	bh=9qhyhCEcwg6J6S7Wm07P7ymWAS1qYrMIuPve78KP5EA=;
	h=To:Subject:From:Message-Id:Date; b=Qevi3N7v9QlBUG5S6jPgsUWGRQ41a+LdhY+/qPo0gCMolm6A7CK8uhOc92+gItW37NfR5ZwYJK/KL1sIiEOB+13WTAHIWSC4/3xwNRwEQKokwMnvM8rzJHoIl74S2x/+i3nwAhBa4NxUGKyzW8LQ/jxiZiZFoYJb2dBUQWlkbDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhPmKVD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhPmKVD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABA4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771832093;
	bh=9qhyhCEcwg6J6S7Wm07P7ymWAS1qYrMIuPve78KP5EA=;
	h=To:Subject:From:Date:From;
	b=VhPmKVD0NrFqnqWLgp9VV8UWwQgaMnPBars9+49HE1SdhlBPAFTSlYmWEg0pmwGaS
	 0AQ13cuC+PoIgiPuiGpQE/GKyjMUa6D/RRNJgQIdzQKTtGXATJQA3eMDKehGHoWyRE
	 L2foytpEqyaJ7MEvBIoWTNs3q+rF8fA5hF636Mh1SUyKlHjjEZFxZE2BZl2hiISEIP
	 1Zt13ToOI4gSWgEuVnaCIBXGgYhFDtQH0780O1CKKffFyZ34B3hoNNKWN02DF5J+9X
	 gM8MdsX9dV85xUWhFseEZ2aAVFfiU4wLvztNgR9gqKEUyiB2VDIHGEQyXaLvyr6znu
	 bo2DQAtQDZKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F9E98DF5
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183209359.1311.16757066275178257792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5728ccced02c08686a6bddba75be12685b7bd8296f940436496f48c284f5eca
Date: Mon, 23 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771832093
