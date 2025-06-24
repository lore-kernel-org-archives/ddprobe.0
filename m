Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FE5219ED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750724393; cv=none; b=JdfuoI+1g55ZVh99WpFhR7r5veWmPuMZpQFjljroZYZlYUxmu6F0ix+9CGmGLbSGH+8FJMZXGofIa7nSs6k9niJdXPl0Au3lMjImsQm/6yLQ5A8G4RvZ7Y5ZLOXpuHmWqie2S58zphtcyuNwhDOG8aHNVtZcMxhqecSkt7yvMQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750724393; c=relaxed/simple;
	bh=QrwLt9ExCO9wh6qrCRUJmSEy+Tt8cfSJVjRnUU80Aug=;
	h=To:Subject:From:Message-Id:Date; b=aYIdYaUp7T5kJrooFNkOx9+pQWXkaqPOwTF8Awar5N5l9/wKrOFM/DkptGwgWq3xtOjpvPgYXyuPJvMVUJN0eiF7zpWdX7nT5benSCKmxyKcYro8F2qtSjefaIOEvaX/sjOZU7nTHjllMyA2YGrgPjdf5kd1Jer04ubrd7zsyy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nlf4l3oK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nlf4l3oK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2264C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750724393;
	bh=QrwLt9ExCO9wh6qrCRUJmSEy+Tt8cfSJVjRnUU80Aug=;
	h=To:Subject:From:Date:From;
	b=Nlf4l3oKQMw9f3ie4KGnUYMCnM3L/IbQNaqFq6piKFUuaafrUmDNj8IxPjJN3jeNV
	 QEDYb4rRe+J4qHIqDVGptTUtrpyPtMbzgQx1uQFG4roKcQCsHXB0dSKuHgCKgFCObX
	 qfHd+HY84Wc044PGpLXkIY37MglsCexkOGKNLRjo/kC5dFKGzTM2Tj4ctEjbXgNri1
	 LocAG15+jcOUwEsoj8kuDs/lPu1jELxOPWfg4NvOKesAQ3PpStXEtZ5OCINz00g4xh
	 GbKMSivu2xy2YYYSsavoC++ppbaoDEyf93tInx6ibgGQ8MHf0UqCxfuMXA2vmGixIT
	 KLNEfJAXNXCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BAC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072439357.31577.12051046856957185787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8407255635e8d9a79c2ceb4a2f9bf136d3de0a06b522a1cda6f200512aa2ff7f
Date: Tue, 24 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750724393
