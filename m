Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AC220E2
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740AFC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665634853;
	bh=9juuPgjrMH1e6iT1KAqcdZBJM/MvSGKsIghx36vbYSk=;
	h=To:Subject:From:Date:From;
	b=i8bAbNhbMceeZxPApl8BiOlh3LhVJYkkIMDvH7BtCVFfLNiAcRneTjVMAr9h/jktk
	 hNaMrG7B8KASNn9yyahXEDokO5JUYOKvYM8Vutbh3VV/g7IBeJehD2VsxN+bTqH6HG
	 NY58F+1iGyEk7KoBiE2dRRTeGxFyWPS9Bla5HIE0/ZEJrcguJFM8d8RwfPzWj9qvE7
	 5UOTXWKr20zkFQRpJBs8rwhzpEso1xUpWPjfWrW0ZumjZFGjyQ2ItAVJN6uO02R4Vb
	 YRMu7bP/BaP385CDd9vGnYzTuKW2M9VFwN/Z86/LBmPyl8I7kylu4DKzC1PIOWxEA3
	 mfcWACBAduCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E27C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563485333.6056.18394878397283364061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78d156f5c649cccaa322001dbea0504489f3146e51ac94889bdced366c3376f
Date: Thu, 13 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665634853
