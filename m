Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5B531A9B
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld0XPZJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED103C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696628229;
	bh=Darug8nLrQBqtNK+SSvsIGilEazFpUr9cxo+X9WGQYA=;
	h=To:Subject:From:Date:From;
	b=ld0XPZJALOkXvrUGsU1pCh9GZdK8maG0JQYbVcc9Im366bMWnQLlCq90UjLPJ8fMz
	 37lT5PT2jjQMnOcbQV8BT7tu9dsNuDPrw/HvKlDZBzzYqaXoO4QmXkBVBHpI9A2gSX
	 oZFiZH+2uhjOsqDG3sS/Pj7tsQQkTOmNQEWVrPvOB3DK4FSsSuYYl54OWOyeAmUlcX
	 J0aGth6rDu5Hil5AEoHbhxzKMhRbfr6jQ82g1CgCuDqjWdzIX3+SfzGnVf0YO4ftyl
	 1XvOXqZBg0zCt/+Gp2gMuedCJ2Z9jhsX6Z6QdeijHpMFuWK/S9XQ3Ad6OMfDOMUoe5
	 3J+YY8DE5k7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC992E94125
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662822874.12311.2465214746200934075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c02b8c279eeef81ef71f4f2e8e8591fd6fe6ca210002f0b5245bfd2d5f78a49
Date: Fri, 06 Oct 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696628228
