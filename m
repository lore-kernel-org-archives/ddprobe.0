Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D957B7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AD3C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667701254;
	bh=rCaTuVZEBL8d0vmGg4HHv3A63YJ1JIu19QJdUgJJ2Nw=;
	h=To:Subject:From:Date:From;
	b=UKJazXaqX+DnpwxHTzfh1YK5op12w54YR9+GwSf+/D60zw9puledGi6qJauiqTn24
	 agpkxdUMT30YgWl5UIqm6hCr7MaKLc6EB3kMXcF0dWJyJDzyQ67cylmbszA1YC2NF+
	 FZaPiuiySr7kGuZ25DjUl3ZDuv6jr1l5aGQwcFpc+JU9x03ptuhWwRibD5+cGFKcXz
	 BICcm9ARoHYQnPz8WTyQwL6aqIl3VYC67MszRc7zSYo0wxJDOS7z4+7SgdVVvdKEgK
	 85axq2jkaxPzXjGyWGsMjxyWT2uhWuAL3UxsNqnDB3bJxusPSiwX93f26Fu/OYNmyu
	 Kv2Ftb4FYJ3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABB6C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770125433.4671.12650230074298324995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3698f024141aa3137d836e547a7f250039b05bea892677e6da75a5d4f61a72
Date: Sun, 06 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667701254
