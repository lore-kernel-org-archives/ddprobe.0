Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272B71FF7C5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765031574; cv=none; b=Ec8p0aS1IOn56eIQ6VeMm/6hb+7aID98iHVTT4sqZpIqiNXyH67nGI3ao0pHl67AORlYi54tKryWfN4EnMt+fyaaoep+Acuc78lHG3/CnW3mvNJZJK3CsgU04cqSMNIA06/6M2c2/QasOsiWYl5dCEDgEjrsmdgx/2ycrr4ESas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765031574; c=relaxed/simple;
	bh=MZUOG6W5bM9A0YBEAyCrzvHjQ+qbcZvLk+9SPcumSbw=;
	h=To:Subject:From:Message-Id:Date; b=q/4mOjRBOmTP4u+Jf/g4EALUYhtAvUDofoMBR2TS5x+Lfkse0Oc4WouPMlskeQHe1t4ALCGTGxxzS3171Wi9Z9BohalK1FZNfT9FshQ6kOUWmFKPQxcQaTNq4u60eh6uNKjlI1eHn/JMMCoMZxgTKiUa1GBW0/kRCmkc+7fCOG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG7r0iOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG7r0iOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC80CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765031573;
	bh=MZUOG6W5bM9A0YBEAyCrzvHjQ+qbcZvLk+9SPcumSbw=;
	h=To:Subject:From:Date:From;
	b=XG7r0iOyhrSRARrr40OWVPsytrDBuccwo4bxEY/3FV9tcvgMGPb0ZHd3xdtgqMQI9
	 Lf1VlWSG/LoITuTZpx4jE/x8TrHYSJwdFf951csD/qRKMVdr8B5frYwB5F38JCJGOD
	 k7eNaqnbTBbGfzK21AGbruaCVRfLnk2aIglZpI+uQmTlQVHYJeohe1KY++/L/sb+r1
	 D/XQ93cmpH0Z3mq+RrjTuOrQapp04wqgehTyCUv1lmEjnjTVLcU4asDfpDONWt7ZOo
	 j/W2i7sCI3Vw+qzQXmyUHVFZn0tXn3OR62TRdRcnm+FrJ7kVa3gDydfgSJtHB8KSEj
	 6QnZOA4bQUROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99063D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503157359.21026.7943028907358977852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ed60294a7875d9340245c876281eb4d796cb02a4641ad504d750123d2dff72
Date: Sat, 06 Dec 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765031573
