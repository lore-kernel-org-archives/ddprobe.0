Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AC15A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsp5RZQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C28C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698028696;
	bh=dS7z0Lj3sEvNtX0j7ip0HBz9aiRUfllrwLKEbneIreI=;
	h=To:Subject:From:Date:From;
	b=hsp5RZQhoaKxkocT9OcPw3p8X2JjQ7Hi8kzi+IAXeLgbWkKkrEgdUbhA0AncDEI1l
	 ObhXNf877Swd8n2PsSfUJRr8NUcnIsf5uMPx/9xpBouAkzEO3zkWj07phpY/Qz9vpv
	 JznRWIIy1BotuF7xkCvfiz84UUx33DEmrjBzQvJwsrHJuBt4L7azrJC+3aKT91DV/v
	 variBnV35Xgt9Rm0RKe41ltq09v6b6vXJ00OVRBGV0na4JemRvN8/NQ/HeVtvAbfYk
	 oRi57aHo6NUwAvsTpEyob9y5TPVx9DB7PeQtT1wYDjpD2lTMkUhysOtS8MyXTWl+p0
	 X16DH/IRff/qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65236C0032E
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802869640.18730.9240307571297749384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527161327e931bb8e4c9aaf27b61b6170da01cd7358a69f7bb72b199911e74ad
Date: Mon, 23 Oct 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698028696
