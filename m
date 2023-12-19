Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2951381
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGPACnbv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86CECC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702951096;
	bh=oUbXoPdOpzTHj2HDWdHHwjGopiTwRjNX/uBaa9tUfIY=;
	h=To:Subject:From:Date:From;
	b=aGPACnbvagRES9QV1yskJHOtQsGaB8ctqbqeCRyhJJqbCocUzJn/RhIbWfSkD/lCk
	 4jiOwShPFJILwz53JdnMjH3SwTyEVUEpvD3Fxg58nwaNrgE6CEi4deJ3jO6uzBjmqA
	 Bp56322rTXaZaXvKYL/zMUVoSDycYkaaUjlkN0neenLTy9qp6yQ3M0MYFVoVFJoHNd
	 Fuspv0mQ92jRLTLIkzDEK8jwd1ayvRIle67Vt8+/sAQmmJH0ikmUOHNC0+yfquH+kO
	 78EAk+xqbaHyye7szWRX/sgPibpcOkIh1a2s5piiKrvOCF4kuI3NTLSF1ucvzJ24mj
	 gzBHY1aT7vy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BECAC35274
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170295109643.13148.18405507636167429860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3448c94bbf1432c3c45c138665d4c389d616c26f86f41c2cb65c2a0acdb08e
Date: Tue, 19 Dec 2023 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702951096
