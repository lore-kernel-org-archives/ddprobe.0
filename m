Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4648659
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F27C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666596053;
	bh=Cvn9IAwM6WeR0+1xZkGaCRD8vQhNJiI+chUaOqxY2j0=;
	h=To:Subject:From:Date:From;
	b=IcRTTl3k1xtJ38IcwXmWy3MrJPnM4xZFag20Yxg9exditXaHFc1YYEcxry7PHsoP1
	 ZLdNxB/kyPRpgauxkIVJGoJMKQDmwfX65mZXUS0BUsX5XxuRLo+rXFG6vF5C9NFLMt
	 in+UxT34k1NGWKF2zTBM1YzCIM5vYL0EQwB7jccYeYSAW0xYoNnXCapIUJBX0sP2HO
	 +2uZDSBIMfcyCaPaDvYlOFaa8aunhNZ1iPw/SElPDEJ3QQudsI4xb/0d4XI5OK7leu
	 ItE+Ke/C1185316YEHHpoz6mTeAZ4mYQ/a/Ne2o0yrw9BfekfekgslQKKNiwi9jArm
	 lWQgRH1vYfP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50714C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659605332.5304.5244083459858982833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3864c4cd32a896d942d51718b0a358362c03b553108cf48e67416234f8ed10a1
Date: Mon, 24 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666596053
