Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BA0BE45
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01904C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683142806;
	bh=CY5EAZTerx3w7ltkMY/gtlKhzDzxfv4khKpQF1vRRJo=;
	h=To:Subject:From:Date:From;
	b=L/Zohj8MAHPrCl9+D/H4PY9uJFZG9Kn9UR/N+mVbvvSfodGkuio6AUUXv7oyM74Kr
	 UOHYEwuph6BUiNf5y4s8RG447nosPjQtHtuDxiW/gW2lRvsSVbnzqTU+HctCyUEcBn
	 BydN20+bdr13YJjMtv1tVlJfvNRy6jgGMZB0aN2jbB2YACcqh5fkSTmmp60m3IxD+8
	 NIQ/u3urZBYp8cxBmGUhWzVUykzU80MT64RiWj3Zi3qa7aYB2J3F+UIKB9uG4E9E9w
	 F5AOSAzE1vY6vaeVeDj5rVWTA5m+TWn96ncuw8wz4bQXBdYF5CgYgszYL1gTmDalQf
	 t04jAvJetumNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BDBC77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 19:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168314280581.32571.1289813942419877160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96914f44aabe71ba442a8b0b5eff6df6fbefe83490894adc4a744bf9989a3cb0
Date: Wed, 03 May 2023 19:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683142805
