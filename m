Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE5AA31
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D2DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670662287;
	bh=JbSAjZO+pp0JjyL3meT1mk1XYD6cdCKAfo5kHww3czM=;
	h=To:Subject:From:Date:From;
	b=k0l+wjrvteq5Aa/ikpy0CF39o7nA8k2UUA7AYbTiFehy1PlkybnHvlQ5vtbu3faRD
	 uPsJNFX8Hv4gRCRMlJuDIxUO2nuxKeBdJYqQI1nwejlpOgG5x9iYxulyqxUbboPDqk
	 ocF8nmV/3JvPQBxesGj/1TFgIPCQLmeSaTQjO7IjlPHoX3TCEDUvc4jHorUWuuC46a
	 0sbx47e4WcRZeBynGSD4+dRFOp7xU8MEqxBMe+QGCmHcdkejgxTAVDWODaG4qV1S3m
	 wkwVewxP2w6tA5bFfExN049ex/L133V8lDT+k+fdtCwDsebUYkl0SWt+8qr2VaaEA+
	 cDZ/9RAyFMxuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ABEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066228738.15659.11913000237539774373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b7500ca2839d2b51221ef62a134a559579508412ffd5f77d651b2b86fddd37
Date: Sat, 10 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670662287
