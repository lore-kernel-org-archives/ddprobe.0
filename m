Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6957C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4055C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686892748;
	bh=iwUTArU4UdZZOMYc5FWh4eRWFbZeHJO7AJ8BviT7/Us=;
	h=To:Subject:From:Date:From;
	b=aUVtfUccGh2oGBhwxjtPaGn2gjaUupGUqO1MSeDZ5sY48QKzwW0DxhPyGbh8a+TQc
	 sLR2jc7lcWuNSioDdmCHKz42gxBx8pLNvl1ug0QYSQA4SUn/SA1R9ihwyT8hU+KSyR
	 Kr3ihDbveNI260mV/OOLnzWU9lYGoNaBx0yrH8k35FgGAipSUpHf8sTqfDiFvC03HT
	 e0uUz8S6l/o0dE88pV6yt30SDmracwcfsR/479TgV4pJtRoqxH+8bMg5ffmwWx+FI/
	 uf5MH3SYynxsS5Omn5j40CE1lE0hOp+lxie0F7JDauHLZLtfaqjxkoaFMCl7AmHae8
	 GgltIRH8Ofilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD77EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168689274877.11887.11723120226127582973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d130ad3f911102201f4fd77226b7db79898f089c58e014f7e3d67cce1e0fd5
Date: Fri, 16 Jun 2023 05:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686892748
