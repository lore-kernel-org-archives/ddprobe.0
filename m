Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E592EBB8C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769984634; cv=none; b=XPPXSLgNjFe0OxlnjGKfT3KJseYPoWZtKPOimDJQfGCHVIXJFr7PGhcjMHObkTaF4v1hkfLs9cHlsZ/wtSqsqY1GXSUHBEPUTJsrpi/weWeENnobwOYsaTNljfmkck/XQlaFtHlrOQu1bQkyVCC5H1jltYnwq/FSUAZgXYBx/SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769984634; c=relaxed/simple;
	bh=BlEzmkncEf65HbHrRLh3QUqbSjrKqr3oJLmqoWb/DPc=;
	h=To:Subject:From:Message-Id:Date; b=KcYAHCQZXf7IDKcu0139aENx1U0Y+H4Lr5gV7HeDMlppasfOPS5g3At2rkesKQS2P2EoBlBplYUxlci1jTawUUJYASUTXzlSrKK4itiLGKidQSie3bXit47/HPFICO55MOuUGRybgU1Do/7zVBW3OM3ckg5Vent7BFu76ZvB9Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S44c/kdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S44c/kdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BC7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769984633;
	bh=BlEzmkncEf65HbHrRLh3QUqbSjrKqr3oJLmqoWb/DPc=;
	h=To:Subject:From:Date:From;
	b=S44c/kdBBekTlyqveR9LtOhRLtXkoJ4q0b5MXimUmCOli1j9evOgBJHf3cuQuF2Uj
	 g5dAkVmXD+OWB7aSjAmLbLcXF5dmqBNuj6cLzUNt80bpJP4cpV8AdPlYaH8Aex88P4
	 StSkgFiuDgNU9I+5FbYoJ+VFvLR5sjDW3rhBZVC8QfHvP+hVl7f67phIu6/5UD7ZoQ
	 bYBdOq1yN+iEOxTdqnNGgCJcUh4bMymZ3NnC6E/bwthztANtuO8vH/9IP9U42Dg3Wf
	 oZHK3XqZUUOEwl8Y8VZFjcADCrVafuJuvHGJzpAnVFZae7yfYvOEs2Xf2OtvuSIt/+
	 bqFD1r11j8IFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2DDE6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998463359.20621.1867664872263008642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5663186161a0ff8f56824038cc512abb37e7f0f89b92236c423287326e7a53d
Date: Sun, 01 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769984633
