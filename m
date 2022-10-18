Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEA37B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E98BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666084253;
	bh=09jy4TWAbglOcwLPmxv1DrLqM6R0MNhGSgWqo54RpOo=;
	h=To:Subject:From:Date:From;
	b=QcrjTHfW730K2DOIL8ktfvS9eTiOQ3lCKF53+VUO2bN2kV5EgLJWF2OOYam0V9tRl
	 nH5Bc6XydI40j6R0pzhwaKdiRAUvAgQR3WcjzXOyNe/cC9Jt9JveUJGRDdIKtBioSN
	 y8pFcqZaiZUpt+zXxH4ZFsOHKbUjs6ED9759QzsbFk3r/EqDnL3MmaqQFwrs3VyX7P
	 GwTyb0gxUjGi5DLlR5l8fjYXCxBytZIzP/Uqm+XAh3qNx0AJInfDz2UcrfrwDafucm
	 /rG3xxg7LF3hgfomz2X323CWbB83U+5qnPvODx/DycaRhTw0BmaddTMFJllNI+xWyT
	 ySymY7rI3X6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EF5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608425333.24107.10005614508430175509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4544bd8713bc8268bc2f571d0ab3a2fd24a5a1f6385a15ae4eeff5f0547c31b
Date: Tue, 18 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666084253
