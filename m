Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A01DDED
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA3DC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690893728;
	bh=/inWQ/2WiKEdYVJTOl0ZGjjuMsXULSAF2pksI5QH1BU=;
	h=To:Subject:From:Date:From;
	b=JRLM5MoB2m41LgwOf3KYwkSIZHu9abkHyAW2VmxfinpmZoRhfu1nN1f/ewXfnqQ6R
	 Ke8J3VThg4GfDyimLHpO1a1PwUicVJeXysaBDtfj5caUi55m7F1MSc0nsgCwltmnvT
	 NzbOLIzrGTRYa6ZV5R3jzwYpsyaRkz3EjA3qC9I06Q3eJBSWqQDlakOxFuenBPRExj
	 y0wNgbgyhTsaaxHDTqUH/Nm/wF+xYCGYiW2OaOKyWgp0RzADMDoAs5wOeMhprwdy2k
	 L2dQSvx/ly3L0plO6mjmomB7acWPWRSPzW5A1i0oA0KcfobMxN+bQKnuVR8BRaY8pl
	 PZOfreJVC5oCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01AFC001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089372871.21989.8487819671192451349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d3d757d4631e336819cc36bc1e537cba8c07b75755822431c9a9832880b252
Date: Tue, 01 Aug 2023 12:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690893728
