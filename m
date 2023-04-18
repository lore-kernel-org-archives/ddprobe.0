Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D62572
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 12:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F269CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681821546;
	bh=S2MqFOClzcW9K3thaxxVfVPbp+N+XICeGnfFtpoHg/Y=;
	h=To:Subject:From:Date:From;
	b=CTgdt3L91nOJBebBcHte9znbfNC/aUt6bt3pxA9n2EhrMRXb2Nj5l279ZDp9kojNH
	 ocvOMiP/BUlR+KIUqA/DKZLKSNujWqxrSiFVTfei4Yxujuh8LCaiRH6nAnI/9aqTFv
	 rTzLU6K/JWqzKrB05Hjuglr8kx5qJp8BpKhRwgAWQHPIwHqZdEbeKugmyvDWkqZZ0R
	 kLny82qRnzVrKc/GHz03ZtZqQ1JFI0iyuWgDmnNVTlif+tF4cNX4JS4clK/vAFcqjr
	 KnCuNg3eMf1l0kKTCl32DHkbPogaKUUu3z/z2XB0nnCks2v9Txjon2pH5v3hTujfwl
	 06VpAVcsDAAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29E1C77B76
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 12:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168182154584.22304.14606852856531374448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629b474e9c8e9fce20b30db34a33dd9a053b52d9b87ab53ed21e2edbcf2e10dd
Date: Tue, 18 Apr 2023 12:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681821545
