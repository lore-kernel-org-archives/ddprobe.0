Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528D3883B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9E0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682723705;
	bh=vk4YGu4OdlZbK/p7E1TajnpqobKKpNz460qBMp05LBI=;
	h=To:Subject:From:Date:From;
	b=q7xAFp/sMG4oS5fww8PpZ3+nan97zzffB3WM+KThoXyY2nO7MB6lqckgp1+i96bA5
	 8HQer9hQp9KS0L56hy2dQm8gHRG2xSxmigesFKOX22hqCXzmD7OoZgW0FljcxEVfU7
	 bABvocCGNf8+GKBJm7AMH3TDSmeaWrSpr9KwD29w0BbP1AXIVBnzJx74slN3MBxxLC
	 vD1qeKmRPZ3Odg5GepN+Llba7+xYqGehaCHQQVlahfx2HpSLzBq8V88DM/wKq13beE
	 /9nAHm2q8e8vNHLS5jTcQh75MaQieUnnxzlZbvozrT0IEOCQTCbtnDO8SBgGBDSW3s
	 5X+abdoktlSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4010C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272370577.4923.3592530236529170663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8624c704ee735d82e645bd887f95dcc8c7244df265a761b4fd38ef10f8e1cc7d
Date: Fri, 28 Apr 2023 23:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682723705
