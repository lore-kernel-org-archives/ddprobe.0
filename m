Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0114C66
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 12:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90FBC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 12:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692449048;
	bh=IxSKJwm2QQXjd3U/pSw0moVrQR/HysH/paQvJFnLEM8=;
	h=To:Subject:From:Date:From;
	b=Ipt43se0dCFa7wgdp8tanV3qSxTY71ox6l91X/fFM/ee5WU+u0Xo/fqH7NDFtShgV
	 DewaS5HpZqi5kRlHuPaVTWDxll/NR9LCqb+JvYx+PmJlAvPJDHF2HeQ02a1UUvwhtg
	 rUw6tdt/oHJjswJ2T/vEtAeVnXbjoGYJaGS55LpzW5iXNB3S7jUTdl+UbGW4WJntoV
	 FWVO0tq+oFaMtn4WJpiAOOY3tE3U+QgRBicOJVQtNkSFE3DZ/AABjeNBxPI8+Ct12g
	 FKmR5PaD7NGQlHbtMSlOx18TuTAwNf3TEvXLpNlB6Vt/qIQ9y43WdqDiZlbL8jSNmq
	 ROQt59EC6mIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC1EE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 12:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169244904868.347.4689444029228642599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624c3b3e226781e94ba3bc9ffb9d8187504c892ab5f94817aac02b93c9791fd0
Date: Sat, 19 Aug 2023 12:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692449048
