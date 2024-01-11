Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171CAEC0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoRVKTT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815AFC433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704945496;
	bh=GuX0YUhZuD3hDCgKXp8pfVmGdQVM6ZVxfZs9KtaBrjY=;
	h=To:Subject:From:Date:From;
	b=SoRVKTT+zNeCyexK6Dxuj+dZXyhrBGotsqRLnQaqsfaIxUBl0LmV4vSll1KoqDmpf
	 qv35o/0hsFoC8lMMN5qZWFX470Fyu2NKjGR4e78bXen+vDirUJtjDvtjA7rpCWWNcP
	 AWlPjM7QSwapX6Ne+2/pv/7LkiZPmj/8m5oSv6HqdmwFrbbHFxYkOjwvriDKWUHH2n
	 GmdItKpN+oMlVZE5gUau3cp+JrIxKK/oxg0S57GNTgrf/5t3LvfysmNKfKU9qygNWF
	 Wto0a/7XIKPMNXqbqZHfSY1aqFEJMlar4eJWCYAEBEk7cizn9KYssx0VjAkPl+MKxH
	 QGS5pn2qXCVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610F3C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170494549639.8329.10507108986910338222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf144e35cd71a426363a5a9d26f7a229bdd5da8bf4aeb59fabe392bf8c22e327
Date: Thu, 11 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704945496
