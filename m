Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF80227713
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73671C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670344854;
	bh=77KaDr+KiIrGMOViNekL0cWo7+ZaHIVdODBk+q2WG88=;
	h=To:Subject:From:Date:From;
	b=VJEjEXnqxlDN1JVIERsbG67MgvxKgJhf1av9kQzVP9DnDegpq8dud3yX49EkFEdZ/
	 S+rAx5oMlPvnRQvuLRcDKzO9mScm9TEtUrzh0BXecXGbVT9gebk737a8J9EWlGtiKk
	 eRPNNRmy81hIabrKAlkY5/ND2gc/qNPFYAUsNwKrC7nxIyiPtTRaTJLKYViT2PJvBX
	 FyteT1ZoKcF+NTVr16hOROX3KftjoB8x+UjVg8vzvxEvTUFFBXJtjb32yhnk60r/yp
	 IKhm/iTO0/6DC9eaousF4CoUr4GPlDLIlk6KmsK14IKt9dC+ROETQevaddRmXRoRaK
	 oT+tXYmv1IChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AD2C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034485434.13806.15651946853525060065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1ecfff071f33a93adb5f3300bf045e8547fb817e9a4e4d3a9778406c12fd76
Date: Tue, 06 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670344854
