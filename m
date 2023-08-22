Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D6D2B544
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CADC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692726248;
	bh=lX9Q4j2Mr5zw3LhwOYOxD+TlKHe4O8oULv2NC6ugRvg=;
	h=To:Subject:From:Date:From;
	b=V1tyIfSP2yJVLfD3YYAuk8o/6upWPMTmOdu9lWp34LEIqbANw0fUexT+eXQNJK6YC
	 7r759dHiVvptB1xLlVQDYJpmHWbvlzaSgdmyhIpLW/ulfOIkcQY4x1SoGJYMDFMCcK
	 /uH6v/KNtT0DYxXyFX2SCLnwBEH5Scy3LCZguU9rF7PJlmjLPa6Q/ddOpUcdBgZeKE
	 8c0tF32jE41wGEPeUlkmtwMByssDuL/54FdHT8NteD8nOkHy6zzm53ahJ1kXrN76vd
	 35j4Q9qYUplQyx2lPiYcHnXAugFwTaz4fbcP3vqiywILF1FCDGReveRIGtQNGkuq/M
	 f0k7bx7Trl3Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D80EE49AE
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169272624867.1093.7135114892567073997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d02e8efe3e761207c58b9e8a1bf8d80f1b7ca96cea91f47d340f2857c71bc29
Date: Tue, 22 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692726248
