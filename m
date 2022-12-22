Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A4315A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89296C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671672087;
	bh=oQpvfQ3/Wd/d+IisVcAgZnFWdTQquq7EbsYCNhyqm0o=;
	h=To:Subject:From:Date:From;
	b=OVjgtRO1sfCoslfMZ4iSuLScaZ58k+AsUhapkbIzAJOFymlweDGXA6mvu7GF9QXzM
	 D7peEfKerR7xCUshRYpasqIfpPVXghS7yaL/BGCerSi1gJ51i7188CY2NXGGvr09bR
	 h0HecFCslQdL2mI/s3aYcT1EW8dg29LOhUW8ouXAxmqUU99J/N7+QDmRBnkBeqFPoT
	 +9mVAh4eYzOrveYwJqyevPlt3/IJB7a4Gn6JcAWIWRUukMh5zhrXd5L9niC7M72C4G
	 Rp5DNhzDK4uA0YINeHHEvjiqCkRqc00r3XVpYIeNsK5ytR9iibcYVnsadMuLXHzeul
	 VHLU7tCWnd8fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6985AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167208742.15992.3034122670423734753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f937e77ec07cb7477f7576e016741788a4f577e6dfd2ef31d5a7397c909150c
Date: Thu, 22 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671672087
