Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB36136D9FE
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782419854; cv=none; b=mb8HTaEbabiYIwnxcKPMTE6qLelhp2wm2qeazF900F1GfMIegVdY4o8BMEbi/P0sMRdt9uW20FVg16bkVP5KTbyNhjDrqeNgNb/VxYOJfxUtqx2kbOYX/jKTut1pFjhFVKx6SRsdpH1rEjsfxe6gZfOCxqri9zp2rQiBRXsT0wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782419854; c=relaxed/simple;
	bh=yDk4RDlXWPUahaGbOmcXKGFspx0zx0nIIV00W7QlVMk=;
	h=To:Subject:From:Message-Id:Date; b=J0/1XKVUVSEomHGBIPYHPre/haQ9H2CRZ/x1YfJ+L6Il8OEydMaaxXn/+qwL9dicnt5gMBe1PmK/mILKlUS8qs+QLfbPxwJUVluiS9tG8rtcOcsoMeXKE5ttUXDzsb5gIaPoBenyb/Mi14wrUoPWYUeXkYTjbOMNhmz0qv+s6y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0vUoXEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0vUoXEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3216BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782419854;
	bh=yDk4RDlXWPUahaGbOmcXKGFspx0zx0nIIV00W7QlVMk=;
	h=To:Subject:From:Date:From;
	b=G0vUoXELFE4p2H86gSzSFI96aM38wtevXABDa/0FLzeouE1j/VzTF2Mb9u5KnLIgU
	 zzZkRs+u0a7RD0p7bro97Fw/DXro9eqGlkvTYzOHoY2iTvtSgikKaFpHCpUcJgZXeO
	 u2OpiZ3FSbqYwU2xS3gMIT8wkScMELdilGJMYUx+9FLCnN0S/iO33DE4JI2addRp6H
	 XdFy2ciQrM406K+3C5kwWg0RLLVyx5rjaf4nkzufCHI5ceRDiWXn15lwyfnsDxEVPb
	 WMa62Ff3a8NReNANl3LkpSGvDUzlwrAuWeakfA76aYndMcNexdKcOdRa7T0SuQytv7
	 jZajjHLCz1tIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A70CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241985389.2039.15116023289274993939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e79f24b73bfc9d94108720085945a9704f02fd99c932f1f59bb4ecad376b89
Date: Thu, 25 Jun 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782419853
