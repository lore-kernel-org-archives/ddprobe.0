Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF0823CD
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0162C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691317988;
	bh=cfnH+CR7GDk06h4WLvpFeDcyBZeSQK3aO9EsY5pD4oY=;
	h=To:Subject:From:Date:From;
	b=Cibu7ROzNQ5pIo+ovdnwlqz0kfg+aVi//e7YhWu2LOpGwy7Sqiw1vJTON0f9RsW3P
	 EBe+KeWbYl+AIxJ3kbJ0cnydBFlNYS/8yubZaffcMsRQZDbb6tvfk0sLYY71Ah0Mzt
	 CKtNlvTg4ldjVYDP7YEtrwQzf/fghkKQHer8XPtb4o4yBHSMsGWMn9cNaLQHHCSS5t
	 6hPUiNm9hAkVizEJq1asWANk8yaL+8ihLW2YRRteEqvB17Vo7siZsmnARKKGZeYkms
	 8EVc0eVaYKOHbdw6gatAk32Jbj5g3Jlj7xXSoJ5x+jHC6wpxs8In35AZyx6fHAKcpY
	 FpYyQ3T+yBp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34A0C001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169131798866.8525.13368762800880072579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c3644debd062dc3bb6197cbeb3f4ea44af6e4e8e95c1777a1cebd650986c94
Date: Sun, 06 Aug 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691317988
