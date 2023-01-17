Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50328BF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF99C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673913687;
	bh=lIi4fu7t5/D032l3WAsHl5LhzwCdyGSew3qUOLuoTc4=;
	h=To:Subject:From:Date:From;
	b=sn1z/Dhk7ZUincQ5hfq13cPk/bDBxSF6d2BFDdsyUPBaAw5zWsWlOm02QOu/x1GIk
	 MzYosCdthmKET/9HKqC0kKSEOLEiJWaF6sa6j0WfyBSi1vkyhgRVYTWrHiBgkBnwpe
	 VhtzN/3OpNdSuxjzJrw8OZ5gnDw4zzwSSVqpw4AdiXWoL1R2zDTs5Jq18JRzfgh9MA
	 JWan5B1GMv40irjquQbd3G2M7xt3H/DjzcaI3Q0c4AeVO5OizwahVcKZOiDmPgmHNt
	 +St5VlIFr5Jq6n1+OhoApFqBQyQBSToh1405/1afl5bcd9FBfHvVNtvMx5hvAOf0l/
	 riTkLXzT7b+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60646C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167391368738.32073.9312666932029234262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcb2b52317e29803175cfd4be9ed03985f67f903d79414f1468fb8367692ff7
Date: Tue, 17 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673913687
