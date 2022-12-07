Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F6F138C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740A0C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670406054;
	bh=oMMCs/JIdvXs476kl70du5B7YdDe/0zelH5hD22P00c=;
	h=To:Subject:From:Date:From;
	b=qzGIFG/DTFIH8c8W0mOlbl8Zxjt0a9xOdHrhMvmSOSLkoAEIgf4EvZ9qOsDMZjbjw
	 cNlBImNWGezhTq+l3d237vjHGQhsvvPXjqUedipF+sbl/lMzbZhGv3OBsqZEwEBm/X
	 uTTzwjwLphmY1Reg+efQTErxT3oKj61zHGHeZSzc7TchDnzoyWV2s8w+unOkbaeP7Z
	 VnhlcV3IszYlshKzxPfJy5oZBiYuerdPXmfJOSHi9lq4r14eY9/y06WDM2pUQ+NzoI
	 xz0kjsV0OuleR7znQlrn1QWUZXkZ9YQzHMSVYcwIIBn+6aQT2HZmsi6Z1G3sCgwidv
	 s69hQ8dBT1ipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ADDC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040605434.26696.830031054917314231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc67c6e22bcc938033ae6e9ec8dda896a34d4f0df9a096623d2ee16b9de415a
Date: Wed, 07 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670406054
