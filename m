Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3922802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE9EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670565087;
	bh=hYg+QZHRXhTQ5v4lDyCUPv0eTWQfKS5FrxTczp/kbPA=;
	h=To:Subject:From:Date:From;
	b=ugcoRcwYGr3gjZG5/QFusfHoCU6f1WJWVoDopEd9JP9k/AfjNVMrYfjr3CjwfHAzz
	 3fRrl9O8t8OfvylYNZU7rI06oCBUjkVM5XEtSBQwo8DAHfOpsghR/NzDcyWHWdy2uX
	 uoTyyFygshMKzp6dI40xH9qW0bI0aiwMdQzTBhPLaMrM/GZRuAbXVsii6vDbXrgub+
	 7A9kutS7h9zPdTfgXyzrOrHQ9h55E4bLDR9Elh7fqUyIpeu1M2pq15EuDGRRcCjzK6
	 dOKW2qLWhOd45Bz0VUxuegs6xBf4FZ67d3aHHD+G6klaE8tSfwa3p0rqU1unfs8IWK
	 yeiCgpGUkrqVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70229C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056508745.15503.17547812404779419434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c860f69af85852900626f6916fdadc4ace490c89d29213ae1512ee31990b47d0
Date: Fri, 09 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670565087
