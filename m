Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E630B320C
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BA5BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671653487;
	bh=GA7vCL1lhVMIz6rE6T6o1j2KEgnu9I67sEf9GDJ2n38=;
	h=To:Subject:From:Date:From;
	b=TJdbpL8d0LVV0j02otFOP7S3a6ckh9Js/h9frMoYUHkPx78o8n2DVMzvlDSKMwL3N
	 vW3Z0HGnkYhgNJQRjSkg0XgM/V6UJBu+ooxNIRwzYo3YsJBsDz3CPYYuxkC5GjqNXY
	 XZHSslGOHqP1LtwNkuBn/bNwnRYz1HSRAoCA6NZDWVXmfDzoBeuCdyzOAWl1DBO0Ci
	 IZjaEefhqoWkBwAkqysyCFZIfZVt2/+PK2ej62qvuuZOUVdHSl4YD7hYuFX5KBujSp
	 fXqR76a8tRe9qhw9oWLx+G5yO+wHzgcHMPQRMmEmPZ18dJ5yDHQyetQhGDKr2lPNT5
	 ahfPTniIkankw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7597CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165348746.31227.15383435637911869284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f2fc2261fccfa2209317a9e929f7c739f8b4728aa07a6e2b8f60ece44f6940
Date: Wed, 21 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671653487
