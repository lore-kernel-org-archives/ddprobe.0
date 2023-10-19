Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B6138C
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5Uv4gk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D5BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697678892;
	bh=N2p+GhJqWd7KNpInPuMpQzMBPXgrRdKCemZbrx2j1Is=;
	h=To:Subject:From:Date:From;
	b=N5Uv4gk4JjP+gVl+51psR/XwVodZGKOSR+x+5WdS5RIPCzYdhbaMaTXs33l44RcAx
	 eSgera4b2aIuJ7oiU67DMptJz2xmaHR34nMaK/e3uIOrDHELblK3QMYTZW/oDB8DkN
	 cA4fdxD3SFI31HXZRTMms/Dz11mes/GZMc17K/3mMhQA7SCpBY+VC9T22PBIt2hlil
	 Xu9wsJf+1Mwwfo/U7+bOCou1QDe5AkrOeu/CsGYVg2dUNzgiMtdNuqXMzx13Uk9DZs
	 QDUQANPmJlmZHl+Z25HFscgYhtUtBPhuOE+j71MfQ5nmyv/cmLbhm8F3+j3dNHUwcO
	 76Fqt8symGFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C0ECDB483
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 01:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169767889280.5446.2593619890237911104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2c492de5064e9842c9f159c1665dcda3935da84c50df867f3372e027c1e819
Date: Thu, 19 Oct 2023 01:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697678892
