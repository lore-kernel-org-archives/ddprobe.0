Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7364C3C1E
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33B1C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693666448;
	bh=HGb2COSIkC61K5ryLBsMdTQuN1UX8ygZvyD3W55Rjfs=;
	h=To:Subject:From:Date:From;
	b=tmbLEo3M2dvt7gGu7G5AdYqxlxdWrbBqPNFqVRJ1FrFlgGbxso99pyyXQIPtsuJ+O
	 eYZwdCh4uTtAZVekSdCjmkjdHNLRRYm308Edn8hQAZJFcLuC/RZxg0/OhgWwjUZPO7
	 hfXmM/3FAFa+3+DwMM1E+WVenSCUvgWijnjNodIWsOCTELzeubFv1nI61JAJSQ7yZ1
	 XBimEX0w20eSgoGEI6mnm/Vf7eEjb6gZaRIgXcOrc8IZJmpblLIARoqy9FUBDYNrqT
	 Akq2rdCsX82zKFnNKXAMW+q7U3sw4oaAcd1sxNSO0OEKbTIXEKoWyw92ikAvGtGUa0
	 5OHoq8yyw4lGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ABCC83F2C
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366644871.21090.9338262874124855835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e70767c8bcf890ea43a131b504327e5b6acf07b326c87a973f0ca82b9457f0
Date: Sat, 02 Sep 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693666448
