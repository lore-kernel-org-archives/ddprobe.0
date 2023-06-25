Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C925442C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79B8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687695788;
	bh=6o3yb2zpHPGpvglf6QNKkunr3gwwWbLs4xVS4UZsc6k=;
	h=To:Subject:From:Date:From;
	b=cA/RskvjLUslCokrVQjwtK/niFFlaFTKxYD/ImT8HGQrJBjgRJ6evcpSKrx0VxoRg
	 Y/ijuakYpr5eqtgO2xDOi0mVT3vhdWpWOKNP7Qtd6tpJPpclEtPn84wWOXuHfuXZbE
	 lUFoHmr+2Li5qFXaJr6qAGhBgGETPWu/jRVIh4nn+o+6J/N4l3EjTFljrYJk9E9m3I
	 V8tKyE1BI76MK0hTN0nOXW4pfkiABcfB75qMpQOGZG3phubuA5e4A73PQ6U/lF7XZO
	 ToTAeiZrZgOvQL2t1BYS4jbp+ABOi3+idAyrYIZEMwijyTGM4kDz4yv75AzoKPuAdW
	 Ov+YeMcYF2BHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9626EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168769578868.11975.15137232307096604263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b41e9608a9ca32422c3089c8832f2115007b5198fdf8b22aa702228beca3a47
Date: Sun, 25 Jun 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687695788
