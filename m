Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B9FD28F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBYSgnDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93637C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698744496;
	bh=wMcUkUqMU8BrtSfIJIpEOfZvwJ2gLWSVrBiYVlq0SaQ=;
	h=To:Subject:From:Date:From;
	b=XBYSgnDvNUL6NClm4WjcfG5/CRW05EelI6R+to4T1pARAQFZU7kByMUtwUkETL/Og
	 dO9fDsoNBHwJSVDjs8yGUBD0sVQ3VpkLawcdf+n5zkwv5y9jS43nKjo8Dsa4zhXGRJ
	 pVFlJ3ptuEUWgHX/asejm3TUCBzwd1HmzpMOooaGxVwKrPW5/bFCI0sDmegZFOPHGF
	 Rfr+ydp5HUsltbVrETbfQ/8ZguDYrg1GtCH+73uxwcxaBV0ij0SgAlkUKdg+4GuKKL
	 EOG08MRuQ3vv2WZwQ48EFhl6Msmj/4oz655jHEGO97LdrsoRA8tt++08SeeQrmDtl6
	 aNtSXvCJ2k+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772E8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169874449647.16782.12957544224428003076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d108777be157e4a6f71efb2305c0a3ad30855d1b80e80469f886e71363b2133
Date: Tue, 31 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698744496
