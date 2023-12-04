Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1662A250FA
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN/fNG+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA21C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701697096;
	bh=u74KSQ+be5YVlgEqzf8/HHozw0JtW1qIBPdvAScva4A=;
	h=To:Subject:From:Date:From;
	b=eN/fNG+rXU2FutpfUF5+0JCc8/SjXlRNCziNchxSWIQfDTQpq3m0/eXImyqkMH0NJ
	 BQexnu0s/SQhXks5Npba/Y6+GGfAe3S5wL8jE5eonUlYdI6MsdLWyEWhXa8USCKF2M
	 NQJMulJtvsKSorbgEeHiMFbP0mkjmYA79Ni6JoTKEtf1R2hYIGKWfyzI59ZwtopPdj
	 odaBmyoMz9fnv2CAw6sCHbvlMiDsRlG6DZIF2pijwt0TLUuM1UVRudqegfARPVZxNM
	 Il3dEG3mW8Lwybi130AVD4qWGB9jb7KiX+u4xjxB3X+T1kTAhiWOd2hH6HdjcI9Azb
	 1wooKO0+w/IkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF01C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170169709637.8953.18144562981871185344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86871a8b06f1b044e7492b3a2fed1f9a54e86080989652270b3166af729b8db
Date: Mon, 04 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701697096
