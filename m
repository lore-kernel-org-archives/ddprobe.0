Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6958AD2F8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D2DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690532528;
	bh=36TL9bYUWTpi5nrMXKaPdVLAqZhOBN1Zy6okGOWqamU=;
	h=To:Subject:From:Date:From;
	b=o3PapL5EZhP8/k/Ud/5lFPuEqDBUX0YQdj3pe/PCSAt4xwy66ncEcQlaNtpg3T7u+
	 0rKR6qwiW2vSHURAcX0Vv24VmL6ZRCErDnw9xtRDXLd3f3c8IQ2+M8zzLlT23HAB/L
	 LEKiu9fbITQOPC+3tGnebBd3vquAzfY9XMCPNY5Yyr4PSbt8770L27xO4UiWJospMh
	 9/UjF+V/1DYyjudyKXvADjQ5znDO+he9gMwkVmzYn1ilfmBpGENTRgbwVoMu3HAcCJ
	 mp+0rqA396ACVWklReluWLnd4FUUPREDUsaPVcg2aP/b3QKT85b3v9wx/iJVgyU61I
	 piJLWy0PgTSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB324C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169053252869.1993.438811049913360961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8134c4b6263d9cbf0d890e38ea9428be7155b664ef69e3b85af4c877c00c98c7
Date: Fri, 28 Jul 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690532528
