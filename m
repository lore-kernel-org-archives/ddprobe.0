Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF0B2578
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB836C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676887086;
	bh=wmn7llSi+YU/pQZqdJ/x18asCFQI2jMbKMynVSwAuNo=;
	h=To:Subject:From:Date:From;
	b=H7MOq2bGxKRG1KCYGsIHFv6Nk1OdW7m7UhTt1CNRe98lcmRNxVPPem8q+JoWPMs1A
	 D4CBAX+CiNPVSgaaYxouknuHEkOdonEGQeRZWVZET7oVQBt5AmNVnWpCNBBDSa6QLY
	 ozZixIrvyerEF3tv6kwZkHEnHEOvtM1/0iIZPG9sKCZbGM5D6B6DkpsxdZdnvpea4Q
	 ES88jfdevlRWCYk2FCwYTwu177yxqvtuDV045UBoJbCqasjNs64RTtCx2SNe7jYAkX
	 WuevwwuAE5i5EUoeJtY9oMpn2x6cZKeORDLNWq7s2SIXMJxzgS0KbmWr2ftaSP8TmO
	 kFqNUyaKQ5hCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D71C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 09:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688708580.22805.15188042695594901790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273949ad83d88752a69fddf412ae55822585c70024488ab0549ac8e9c02edb2e
Date: Mon, 20 Feb 2023 09:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676887085
