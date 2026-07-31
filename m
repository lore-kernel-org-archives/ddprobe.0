Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9FD1E0DE8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785470434; cv=none; b=rDyxjYo5Ej66xwhuW3KIsfahD/xscwWKRo2GyaCQj7vBjSOKiO+dDOgPeMhjzSaw6MUtj4CV0iCXdDaTIGXI1NwlfMv7oqsB/mrGe0+80fj9s+NvIqzqPdbb86HDg0xDgmqWjn4aYgsq+m6oFYvrF+LAaz1ZSMojAigA11kBtxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785470434; c=relaxed/simple;
	bh=rzyYrgNL7IK87XAVsSfoZsQN0hvvDMrnpwX/T48No8E=;
	h=To:Subject:From:Message-Id:Date; b=EgxnaGI8Rg/7m2J1dZMW3xOBJqKdGElnI7bxSTGZpUH0X5dV/getIRD3zMX59KVS2Ph9V/WJcz9VcQ64xYv89MyK2P56x34fSXYQ3/UQwajdT/J0I6OBNSwoJ6qZEmY1CKK475QCN2bbznG/VtFBYTM9RBWYjlfbq9mVDagJweg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDlGEGQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDlGEGQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD32AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785470433;
	bh=rzyYrgNL7IK87XAVsSfoZsQN0hvvDMrnpwX/T48No8E=;
	h=To:Subject:From:Date:From;
	b=VDlGEGQCDnr4A4f0ZeJEoKX09H5EcHnigb9wOGdp/GHisnyGc4T6riaNwL88MHhtS
	 mRDGNJqkTcnW/8hrSVjgPnDKBpMHVWafw+jknHChShMSk3tcdtlBpA7cj2/3atZJi6
	 MXQmQP5NAeUBywTJ7+KG0GSAscdRroEuYFI6qMDcUELOSYHlxkP7qmvXd4GHkKVDuh
	 I0kAH1dikazN8UbyAjhIfYZKbImjssDWLDrTFj16xlNxWA0xVIoEOF+LPgT4nRklWi
	 WWTP+2/AZ5jyByQJgYqnvr/cbRnAOeYnHhhJYlGjvCKlJM2Qj+qaBEeXbbMv+OlOIU
	 GhsnlUIGuxEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0DC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547043368.866.12776753470554948253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c4adc4fbed86e856315ee3acd906a640ad5bcda0d20c8cd09035b43a261021
Date: Fri, 31 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785470433
