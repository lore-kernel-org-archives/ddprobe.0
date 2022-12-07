Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED372F2A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC79C433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670445054;
	bh=5argwK3n9MpU6I+PQCXZIQdZIFgrOuzQxslOvjkUM8A=;
	h=To:Subject:From:Date:From;
	b=luJ4aOTp9/naZ41lxfLvy1KUrkqfT7ec2mDKU/VrSaUHjjTMk1GMOLdV6GGom6uXe
	 Bq4TiS+VMlOdqbk2EKx2pwlZ7wxydjNQAPgJ2rgo5RrDXnJCmJkDNqEpeGgqK0asJB
	 fHvSuVh3DxjKujMEuhNYwfktbVqV7lRbobUwFSSuu8+nkitjRsB1Qez1kx7OuDkJD4
	 fZTloP5GJ2eF8PYEQdJXxg0s5NJ1PE9GlJHSveWoYXmSxDByM5unpRp8MF9i4HXV7d
	 hckQCyXfwYjLOiF5K6zMr/EEI/Mz4CRcRAHglEptjpYAxgsV9hvUAbirwsyEaX3JSy
	 CR/bP8MbCWcew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5503FC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044505433.30425.11266209353314153695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9fa6b26779df3d888d9bb28d04963d6af55e878b55a159586633ac7555b944
Date: Wed, 07 Dec 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670445054
