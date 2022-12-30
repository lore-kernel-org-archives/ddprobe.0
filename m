Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40ED7E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80248C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672426887;
	bh=SuhbsBakJ6CkkshgXDHSWK4yaIBvhyAp/djfDn6+D7Y=;
	h=To:Subject:From:Date:From;
	b=PTywUaz7YUvyVvGLS2bX1A956B8wfdIScoIRS3eNw6QEMvyGSqeKC63gVMOPfWx2s
	 gsD9P3nUfHCff43UMN6k1kNO3Yj57Xf4k2iHu63zIG8qrU1WEO2KuklMRziWyQSR1y
	 8euh1wWcvcQhxZHZg8O+6QDvEtZWG0XQeOT5PepYA192SKKWwMCwAPygLO2k+EcVlS
	 5KusqHKgQ91KXAlmYMwr+0bMI8TXOnYa7GgHtdQlQSb7ap0rA1n2zTzcWWt266D57R
	 cKHunvdEke0oIC3rQNZZdCM1OqpuiWYUT3Z8ExEI88Gu/UFIESIlMqInpJ6rTyZz/v
	 edI1gN678JjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6374BC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242688740.10944.2311822116848436903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0db599532ced43d6d7bb645a5d1393a7b2a405176c19f1299ee2b6d501e7f06
Date: Fri, 30 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672426887
