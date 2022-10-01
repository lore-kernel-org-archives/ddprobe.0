Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80F91FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7745BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664595053;
	bh=i5RgYDDQ1JzCLRsJzrTyQx6LQBg5w3mwqiZLTzEBvSE=;
	h=To:Subject:From:Date:From;
	b=hzOc8ZJ+4NpqsLEMBjYwKjDGrVSRfPc56d46eyMNk7/PBx094D8gf8nz+vKMnTFgf
	 ZO+6m1gT8ZfMn9qXW26+WukYbW8+JHKgLZUgXA7W6W0gwncayK/mhFCPdvfJVwM2p/
	 2x8kBGbWU/va28ZSMBI2rOT3tKgHoj+RzdxtoZmXx1Dak4tcKu4b0ojfs0DRYBX4yw
	 1ZErPbf9wKhhVdEU3Q/fBOF6Ip35sLFfQaR6ES/4QpppoCmAJa2vWhQ0rargLEcE0t
	 yLwh4mKekp3ueaPoFAw9wPTzZIwd324TaAtsbzlf37yiRnHFpa5RE2GnrztqtgVibX
	 yD52QID4bHa3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD76C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459505335.31104.12334189247823631764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ace26fab3227decec653d0ed34c4bbd76bcfcda4b2b6b00c3786b30d38d492
Date: Sat, 01 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664595053
