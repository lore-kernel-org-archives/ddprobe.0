Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691ECEC8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 21:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1DBC433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687036208;
	bh=lN6tdezPmFO6goOSEEeP/Jl+Mbl7DJ+45JnTCS91jHo=;
	h=To:Subject:From:Date:From;
	b=Mw8In9UNs9GzWk0Q1VSW5p1l8r4fKhG8L22skDCTt5gMrDGWYaDLDeLCZ2sl61Tmf
	 Ed+hhPaPIns0B1pY82PUFyAallHslTA6ANQop8CgYKV6oRhDtS/6+aSJzRRaeOG6XW
	 fLy0FtqKrwW/RG1b3Ow+EfUmWFNz3VQbRGkZ4i8IqI3ln/nF+veLekTlfUSIPrs8W5
	 /9NCE7huOzkHCew9BA8i4WpcFlbaG9r2V2N0gNorCd8PHJAdJ8RSfIytcrZcM9JpZt
	 jImj6EQOX4Pv+yWQ2u9No25vkE5HpJdtWDL7VhlAaqWYMjXwNlU6hbPqKUWeFbH+pg
	 3VN8IA2sNAtyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21AEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 21:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168703620867.10436.12669813434053609369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7201005ecfadff91cb63688a95ceefc734a05c1509a3783d1acf850bdaf7986
Date: Sat, 17 Jun 2023 21:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687036208
