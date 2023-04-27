Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4351B10E6
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7E4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682557085;
	bh=sBl6nzLSBUz9OisCv3hQ8UrW8eUeSiStpcLZquvcH0Y=;
	h=To:Subject:From:Date:From;
	b=CdFajqnOKbDEdGMLnOKoXpkLXsBk7T/v+faLIYEHLW3U9ENnJ14cfVfeea0QBv7uY
	 /SKJtFJtrETkxEtbkgr702YuVIcchnyKTf1bgXWfB0KAfCNhRMIWOhORSbxVtXSXW4
	 ylaTNnXllhTNAnZ7wYopilbIJtQNZ15ipe46niRftwB7QF6dA3FJQKoDVFXV9H6RNJ
	 bF2CaghWVpU1vG2JkOtaL1VdIAaC3vcXhlciXmi6pwVQXhYemIaWWE1LBsRxXJbym+
	 2b/oCroBiFNBpZC+6FElV19SKHNiPTUtyTzPkp+ZWde3PLQ5iWFuvZY/Yd20K1onoT
	 G3VtfZNjSr9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD38C77B60
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 00:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168255708577.19315.10726702906137268515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b713c2b3f9b717ef1769b723c7b452e987279a6a33b558e7abe35b19982694df
Date: Thu, 27 Apr 2023 00:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682557085
