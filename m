Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509388477
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 012AFC4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679345826;
	bh=8nLLh0Nm1O4aa0PP66/2y28uEdDcqPI6KZHM15k3hKU=;
	h=To:Subject:From:Date:From;
	b=cvZt6pLqegCD8aTHL+crJwWJt9IDDKZbLi9hTl+14jZEPCtO3rsDXD+sSau0vCawz
	 KjBd8ELy3Z98vk9usvz8OOq+uyJVehzJha/lwCQ7rPXLR50ZZp4J/RveIPKNOAVgi9
	 nlRSo+pakgXNtwNDagQwglFAsgqP9/eY2ac0dmksl8UyRWA04FJ6Wuf7BwCFZfQcTx
	 gTY6OxwQc42uaJf+HiQqiN1jX6WySz09PIKKRXcr9LjDx+llTT55On7bCdkPjcySwV
	 bRy/zsc6HfVTII+0nrRaVSYDGIzDt8WCCXw9O6zCUcbu2W7FBA9kh0btvbyMMp6KXi
	 ksgIFdTzQhbXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD695C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934582583.29871.7443169362007586567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e076cc9a49ea5a2454a19bee755cf4a7e74c7ae51efe0fb73773fe3ceba1bf59
Date: Mon, 20 Mar 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679345825
