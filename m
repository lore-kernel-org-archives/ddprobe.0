Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E73417E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4989C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688290448;
	bh=gwtzehBFPmgOig0DF6m9ByakmeEpdArQbaPdExPRxDQ=;
	h=To:Subject:From:Date:From;
	b=iG9fjv3ortZ2kpEHqKoXDUILGEa8GdGH7CCd4nXRNGRqRMKwdeQHV8wCW15ubC8KP
	 MyULzEOqLyCaqDBVYH2/FfUCIIEtlmtiOlcEHR4oZ+LvkZIPoc2usTpVhr8KSnp+VP
	 w+SIh+BDryI8hs92Ayd2u8FMmPsgv0GUgG4dNOPOrpEsdwBKTLDTP/QqyQk8PT4JwV
	 UHsfzZzNeUW/9ft/M40JRyZTVbauyXKJx3etu2kfSiwlxYqPtB+6NDVeq3LuNKGELB
	 aei4VsItpyYpSjMZC0qugJ1OxpiuZ2/xmcosOE3mxUXNh7gD9zBR+7CWzAjy9I+H/L
	 u5aL7DVdoM1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8897EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 09:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829044868.10573.17310443546829117949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82d6d01011293bc3844cca4291f95f066b60b8dbe1556538b225bb76965e3da
Date: Sun, 02 Jul 2023 09:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688290448
