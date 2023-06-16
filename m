Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B93E36D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE162C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686878348;
	bh=KWUN8H4ZO6Fou8Uw5bhp57XRb6zmtF2UKrilthUTzEs=;
	h=To:Subject:From:Date:From;
	b=upX2goMTociEOGU6vprHcfSzSAmyHDOjxkeJW11oF84a4szfi1UQ4TVbSptflAl0d
	 woQSLxMCZIwnXyqmlMXlEphohIb4hSD+WVTFmTOYHayhAovOTXPqcN1ettiNkOmZwd
	 4kNyd+kgCy++xHbwOfmYyL5pyk9JSR25p7e0y07a1ghGnPI/6B1r3+klOYwDAb0Ys9
	 Xo9xHOejIMubFVgzy/UR+/Gjhq+O755NLJGIpEsFR5/VTdi14C11lB07TYM6ECjDZ/
	 IO+gBDuTcteqozsBVwNeqftLR2vHUalyxe5nsnz2STQFoin+vRPEWRP7SpfbFEcQYV
	 hr9UFXchl5HTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A80EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687834872.26187.16487605961510328083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1376dcf44766966d769044493d20292dd4b4355231a67e1e01669f5e6c7cc38
Date: Fri, 16 Jun 2023 01:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686878348
