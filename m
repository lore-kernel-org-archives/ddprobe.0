Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F42123C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 06:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D791CC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696400768;
	bh=bBjidYUswLiM55xCdRJrttior18o78Do9ySKiE3KHPA=;
	h=To:Subject:From:Date:From;
	b=mFH9tV0gfcu7AarzAuHLqS1Evx4wFM3IA0y2viqYhOxL4dv3TXlrgjM3dZ34jxLH+
	 HS6kZthHkklxLXzJuc+GsL1UnkWkdquTJz9IFCpccz87I/8F8t4jciTgckJ3JnPhyY
	 UVJsrB10XOceRzzwLKbyDnWagO/fSjCYm6swqtXX/34CQT0uMQLo0CRb6W698GwAq+
	 BXhAkKkAmunhUqwbkURe/L5XAp31LMF2EuH1Fn36+cD1OAcPPfpIJe05WKJqe3YV2o
	 yVz5z5BWjHuJ2OVYYwBvKST5A3XRcwchKW0MULTyJHS5cXdc90SBFeceaneXGN4wFd
	 gjHU8bOqhjlDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8427E8FDCA
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 06:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169640076874.23794.4821520663045023878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea087d72fcb587102c92cc40db21fc6cf8e5c24cbf1c844c78b06ae6dabb252
Date: Wed, 04 Oct 2023 06:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696400768
