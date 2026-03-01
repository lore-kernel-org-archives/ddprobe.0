Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0499330EF96
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772380494; cv=none; b=BpqCiIivy9kOQfHzIO7bCj+YxcE6j7XKiJxwzvxr0ZYfejbRFBrDJN5IzpRmZvyCcIe5Ir7mEjwVbyKWoniBZwjYfNsQ9nJc4bJ1zKXuVkUHhmCXCb3KEW9KZq1MJwiLS98cMPIm7LTh69U5dT5jEH/FMIBl6y8DnV2Dwe3NVsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772380494; c=relaxed/simple;
	bh=uky36/RPdZjAOQp/jbf8nfjp8nS9N91m8jFLhU2OYMY=;
	h=To:Subject:From:Message-Id:Date; b=fyLYnQt38xq3QkFazVnhi/c7ukr0JgVNEHxIRuPSPSRiNKUBn4QOeX9xR+Zpz9whWVwhF5Nyd6mnPCKoj2bTAxC1Qa2v9Yshj0ONzq4DZdLfiCzsHYQOLcaMmYd2J1zq3vabT43e3PrZZ1Slcp5wtD6s8up1EJSBEmYjJAL1YQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlQmaLwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlQmaLwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE17AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772380493;
	bh=uky36/RPdZjAOQp/jbf8nfjp8nS9N91m8jFLhU2OYMY=;
	h=To:Subject:From:Date:From;
	b=RlQmaLwSCWW8va74zAegHnLzHegwNVGySirQnEPA0BCkm8JYVTRMM8nizwYWD7dSI
	 6aTXrN2/rUmuV74i2KLCkzxn29a1Xoj0qwAtITKpYkuCqF7SSDhdT1yB8tlygaekXo
	 Ety2oehLFRWdaZ5f3/Ar/Zyz4Vd/bCAU3TzTIcVZYdh1wiiNuYIe86wu0ITSYqTiKq
	 KliPfdIXhrLdej7wZCmy69CL59f674eCw9h7IofVnrElf0Rw50jRT7Ci7vUGL26eeu
	 YKoUJsegOalJd7r0LjqHuiPFtta33E/k7XtdSZQv20+mwS7MjxLOXjpLRccTIqHyOU
	 Rn5bQj61ceOWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F21FD0070
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238049364.26621.4030134978842252217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0751a9dd00f2b501350c8f1b927042413609b34f797586a6d03845fb2c81c1
Date: Sun, 01 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772380493
