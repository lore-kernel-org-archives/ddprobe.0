Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2189C22D4DC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770918294; cv=none; b=kD+C2D/GCNyWi9kj1wwMbYoOnOnuywmXc1Mmp5uoSWktWtviJu8EwqzjfbCyNg1H54dkUlqMbxXyicJkUZaUxKftPleHZ0InZal8fh6mB27UUQmKoQGA0WkyR5mIqpiM7X6yHkoOKyRk/IbZ5vng1Mfl5RPfAgkKNoyoqqu0t7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770918294; c=relaxed/simple;
	bh=IpWjYhyQHMouS+Xtg6LyAlmYNpP97+YuVCKaAlUHKXw=;
	h=To:Subject:From:Message-Id:Date; b=suTOO9obSzJJ0PsUVYLLOj8wIrCMYo/3gAjXpMrSJLfRu9hYJ7OhAPZ88SoWx20rArHv792PFvQS4Lp0UXfjp+/adiYHaCrIH05ExGYey44N7GFoPbanNj1cZ2JE3A8m1ZNv1fk60S8AO7qimFpqwFgTjAOLZa7QpbGrBQTn4aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPpM1FWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPpM1FWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6122C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770918293;
	bh=IpWjYhyQHMouS+Xtg6LyAlmYNpP97+YuVCKaAlUHKXw=;
	h=To:Subject:From:Date:From;
	b=tPpM1FWzJE3r5/MSvSaNF1pZee9EbkIqHRGcObrRf1zTnMzUnIcdIgiAScbCWh+Dq
	 NBILuvmsZUMrR7CwxLDIGKyK6Ks5Zyyu/BncTHkP9wm1ufYxFk2GOyNyECW+SjV+4b
	 elBpE8DjOdVpKuzd/Alg3hANWucHYTU4rrqwg8T6UdTrFmHr28brll5mZJr6EDDT11
	 8ZMPVbZiLQ4dNe4lbZvD91Z1zg3KR1GvUoa9iLnH7mZU4qTxgsq2Qk2DuG7gRiBo5V
	 ROw2MCN677Kr9zA/gc/63TCltv8OrBgvVaiz/aqSZFioptHVZItZa4r8Lq+cFEZfia
	 e4P4yG4WdGlBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D971EE36AE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091829363.5445.7589666306027624308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a986c421a29aa21604fbfedbc8d0393f0b22486bf6faaa16600cfe6ccdb9f471
Date: Thu, 12 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770918293
