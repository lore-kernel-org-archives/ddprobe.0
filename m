Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3A8139B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8091DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668399654;
	bh=CSiVtRUaZYXw8sVmbdrCL3TDCVGuwVsA3v/USEdCF50=;
	h=To:Subject:From:Date:From;
	b=IveYiucMSBiGBdDlgVKocb4JvctKhKTiMyYUS31XPKZEbvRATZoVYa4OdPlObtb1H
	 eBEv3ftvKFGtZlYKn7+Q2iBNtiTB1cc1CXdJ89L7VQsBhbZhXejFyq4MxSUkojlKfB
	 kpJFJhBGkQ+0a+S/DATeKTwttopprFbobSh70KGl8y9j2uJJ+Wxv75G6TQw8Y2jxuT
	 RF9pbuL83lyVaFGb4KCF4EIq9tchM4Hp5UWOJXSt9yWEhlryHprkUyK6YyCGwP4848
	 iuxUIYWB1dmNNQgcfg8nmSNapVpiBEhTQJzxFRZkU0m4cGZWc7x/ams2OtEw+OcoYA
	 /c9hmGQDUnIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E29C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839965436.20506.5494036401103496512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f066fdbd4e9f5fe5810673c805b47478357a33334934a3d878e93bdfdd7aeba
Date: Mon, 14 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668399654
