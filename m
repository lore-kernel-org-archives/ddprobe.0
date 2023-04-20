Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5556C8F44
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0640CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682009826;
	bh=b8OhuM3y2NynDlzAPdTYB8qYsVqgC054tVnirQLFnYk=;
	h=To:Subject:From:Date:From;
	b=CqwtyiBX7ksiY8l+HjKELlQ/SJNxxkFmF9dQ5WTuco/9ZohNnsVFSRXhxfw7Ea2rf
	 OP3qKuyF2zssX+Hv/OpmVQyXfhhipmMqbxQzxZmUk3Cw28pfOK+CqHgrrby9Ye/nOZ
	 7UXdXKyilXc+uU1gZuxdrk/BaZqVJSmmQDminchd9rSeqTpxBi0cqnnb6ijm9/6Tnd
	 pnTCTAPFmcCfezVJB25skfz7/T8p/SxU5QN8AnGr08kyDROK2xVig85GQx3zuARGJE
	 dVf1KJkGYdTAIE+d5x4n5nd5jD6dFxgBe6G9Biq6IkUjlAD2PuE+DMCaC4uugdKBlh
	 HJWktCYSJ4zHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA6D7C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168200982588.24459.4671951628564257414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ff257d7b4d9599042e91a9b69f92a7bab35204caa131683adf0a001c9d0301
Date: Thu, 20 Apr 2023 16:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682009825
