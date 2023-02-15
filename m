Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540B953BB
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF0DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676468286;
	bh=xrP9gv3pkmq3ZfUfpjA4nE3Fx/tTUA4T+QlrC6DZe9o=;
	h=To:Subject:From:Date:From;
	b=ejC7E5/+NHtxd8B/Dd38mo0NJSCm7JhbLOuuauceDokxX7DsPXxLFrr4y/Fb2Wazx
	 YKA5E2DtwgQQba2q9jtftZFfuIeUSuGgC0xbjBKBLPMK4nTGPn3rAM82AknKIJZHWL
	 CvC9Xk9nOxtnrMr2Go4sAiyNx1xKIhnIgA2SFy8/i8uhH+bsgEzaRG3qjYIExn7vmP
	 Pg25OeJLyD6OUiHsgxiY8dnv0Q33zWLMPmPzdZweyOmuZvp4buKG7kkp8zWAJFghgM
	 xNgB6eqgYk6PxpTLRt0pBNRkUqvnOUeEHWjGAW0Dfveo58yfYN62ReNY5AfMSyY5m4
	 Wx5mj7z/ZDLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C2AC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167646828583.14967.18059355197496584543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7734cdc2e05a972762f5c98def733946a9528db76baf380cf3166de1926ca355
Date: Wed, 15 Feb 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676468285
