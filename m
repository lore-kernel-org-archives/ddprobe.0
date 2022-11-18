Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5556A486
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69534C433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668804654;
	bh=SuY71iP7UEmYt+IUFTB3fR9nD6zJ21R/luWLozn7btc=;
	h=To:Subject:From:Date:From;
	b=a+AIiAvCFGDqoO+lHJ4IjqYdW+Q6IHVJ2sna46R9G+W43rnx1vq0LOx7O4FaIy24l
	 hoJSA8F9JhfsWPyhCrf1XcPNa2rnOUM34mXfISo9QiVLqc4ovNRXpSWVE5z3/gQJCz
	 N2CBpMBvBHJdm2ZMF1jJ0AMHxNkEXxK39S4I/cUg0WklNReaxYTrvaZcwbWHEWWQaZ
	 JGZtPoiQTcLNJnNwaPmSJ9QBPgHexKSk3eOodVSiditKlcaMqGhZLUQCymSoJtSBnp
	 tZeMMLmHDRBVD4jGFUi+/4Ke1smX1qOB2ousKw1CuYZYv2zVL4v+CfYbRe+2fJ44IG
	 Ll23LwhdmRtcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FB2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880465432.4093.7976659915188547215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f4312af36ac674bf1bade3adab39ac14bd2d1f31457c1477752ef406654ad4
Date: Fri, 18 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668804654
