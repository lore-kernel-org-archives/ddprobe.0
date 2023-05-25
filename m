Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C17B5C97
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 07:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02133C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 07:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684998306;
	bh=p5TL5cdIqvxN2Uds1vqwZB+pn8DQRzAh4NkxsNuIbxQ=;
	h=To:Subject:From:Date:From;
	b=G838lO6t7Ahmb4odGkYjSsEp0tvnmp8x2AhnLD2FtEj50acJqGziSJLf/thgGxJ07
	 QBD994VcMeiuGfU1LcZqHbuUaMeN+7BePNAqWSniRX+sbZDNepoBXLaIuaNaK/uGhQ
	 cUH+twj6q9X2eOMLZGetoOmphUsnkMAQVPrvk9sP9MBhm06Wpi9ExpSc4+XMZGea1N
	 DOzmlX1Ohe9RG8VvNAJmmwCQ6jE+0fB4OlXfDn2acayHwRry3i+6neQ1EQW7Y0SE8R
	 GuGssJR1Gb9Q9VQDQj+9/KDrLWyOdKsEAZsjnZzPDnPYaRjA2ZUIFoZKBu6XdhQKu3
	 S+/oaRT4Uvfzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1909C7EE2F
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 07:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168499830584.18831.9765380139839256906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb1c590f493038de29fb84039a1a78cfa4829b512903c2a4a727a0c9fc91239
Date: Thu, 25 May 2023 07:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684998305
