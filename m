Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAE37C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75782C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669780254;
	bh=8Qjf3Kb1mcGFj9e+r9Z69qzt6m7MDiYPQ0LeNHddmWs=;
	h=To:Subject:From:Date:From;
	b=dQl/sJ8uo72UbPnm7ReH80PKVvDNoCMLCbd1S34HjdwFlbxzeXmPpBdKNgu902OUR
	 DpjBSjWXilWcdhCcoDp5spATLizKnUZ2bg+/99/4NJ0NSWVf0RlxsUaMQDGY86zAxh
	 6rZi7EeWtnVeYGwjddS2eRK9rrZ6TK5l4w86S8haXosXbc0cyRJpkjs8gWrAfICFaF
	 DMHakbwdXiNIwYr5DNGzi8cgCyfkBgLSDZcieJpNWam0Kb88C9m7kg58eEAQ+Vw4EA
	 ayF18QGssxzumXWY/XgYYn6vHPmIpEyWykZYZs8JCcqqirAsbRVoavpzkyBcDWWnjz
	 kZZMTx4xiEiIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58765C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166978025435.3973.9737458081736068428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f133cac6448a8020e01e0e56c0470a9be9fa0a99cd15dd410167e1019b8a442d
Date: Wed, 30 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669780254
