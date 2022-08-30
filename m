Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DB2610B
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC74C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661897453;
	bh=H7p/wOzxcFIjXWDZoz3nrLl/j3CcKF4YSrZM8J+JkI0=;
	h=To:Subject:From:Date:From;
	b=UPBxblCqyqhtvjZaVdT7h6G62kfEK0qVJL1grvPjxlg6xB5AhZVYRNp2tQioZdf9V
	 TOV42IPFduHSe10+8CCfihp2JY2iA3FKsvdETk/9OcYlEtpmNomaKj3h+MvurDD5Mc
	 Z16d7buyFtgdV9r421VFBlEzXYyOUB+Ne3o2oa4wmS9uG2QkkdsZ6OaXkdI56xLXgB
	 QYxIFUiZKSJFR321BnpvjD0aKLjq19337bChLSFWuSqzzKbvgUGrxI4RUYCcXcp9Kr
	 +C5DpsYTUpUJpVlmbJ+SJRYMO5BBvi10iRp1WWGpwpTzaQh4K3KhfPvmfkf7U3isI7
	 m9peQNe/MnVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A6DECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189745333.3814.2182163148353511318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70008845d8b4fe37a324a4f699f5c40697e08277ebbff0bdb63f4d78bd77cace
Date: Tue, 30 Aug 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661897453
