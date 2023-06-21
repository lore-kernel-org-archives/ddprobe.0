Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C99EEC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD8BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687308788;
	bh=PyZV9QvT4DLi2CWGQEZT99nJK+vlHXko9vVnjcBFOZM=;
	h=To:Subject:From:Date:From;
	b=j46zc4nEdgXTCrZad7IsI/i6WTx+VKWa/sq7X5aZLskjfQtBlqgXxBO/HoGc0DuLE
	 EFJezoift95iymA32oGPxNdP1dOT9CiQuN57ETzV/eFrkPeMwz3FJN5fcdlAckO/Rv
	 zf0T/PmJSiL/bmWjsS4szs51PIJZdwys7Oziv/UAt1LzcUr1GlAMPRGnPY2qd3v0Rf
	 0fgfS/DAk/UcUl6zZ/83hVgJicp9FbQe7CvByHL52Tvi016uxX5K49B0e2e4825JkA
	 nB0K52gTBYhtqF1HhyjQ5AdkAQI9VDTTExECOjYlLe9yCIXeXwIdosB7yjLKz+TS54
	 pus6JHtnv6JGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD34EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730878876.15260.6185214880191000515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e63d468d15200b8cdce0218fb6337184efa0cf16406f5c9d42987d34389dc95
Date: Wed, 21 Jun 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687308788
