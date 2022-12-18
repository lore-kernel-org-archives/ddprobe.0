Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B4A7E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF93C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671333687;
	bh=gbW93KMJO1VoJy4qUxto6WStD6ld+1mZeUx3u6rESNM=;
	h=To:Subject:From:Date:From;
	b=VAU4l4c7aWaSfERltqg9ZjVp67Q94rsV0yUB+6RDjbu0j/Ow1uYz98H5hKS943qUU
	 K2hUOMIz7woOl4nx3K6jtvCweqN7MlJlGAaFYhE/xohMnytUiY7woOHGJsLXetnUNh
	 UzVvq+4FFxNXM39xztb5Tbl+x3iAT35FgNWgk607cDG9IxH40fHlPNC9gnevehfRRj
	 elfd7iZ7Nrz677k22YwMiWCkCtclCjhUIx8pzPK7mhhXMZw1bHXu38e2SBrYzPbEPX
	 c5MqP1zlzf1dxX9YPrjr7N1VrII9wir/n+t2YXLlgfMqwA7S0oRDioSXoMZzGuM4XJ
	 6tNcS+x56T2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E95C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133368743.689.14410008664787016257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6df647f7f6b4d1d9e123d471d7fcb31a97548375f826a27645d779a6d2b4f9
Date: Sun, 18 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671333687
