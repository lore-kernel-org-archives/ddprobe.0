Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0B83D67
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E2AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683472685;
	bh=cvKoRpWhp+v7tRIl46nfNcC7e0MUUps60QeCDBIDppU=;
	h=To:Subject:From:Date:From;
	b=sfGolNlSokah4Seb3syf5XvCSjyun2dKHzSjrg9gRt6bWVh6EhNZgbGK0rpEoPE4w
	 xQqJVyJYtVEXaFQCZcaS37tyLXLN3EPXpd9be63IxXgDcBQt7AFqEPFqG1ofaHGPe8
	 plOsII1ieI8V1yVl3qQO2n9YA2YrJssm+5/IkULOQTASFwhcEaVB182rOaSEubQPv1
	 7fwr0TmI7prAskV82OR88HpTpZiZwizt4WZ0TqtB+NJBnzQTgoo5Z9+8C7IEenD7y8
	 uYPJOEfCgDcB7tuBdESYQfydkvT2rSWeFPmJ8BdIPF8bIcPc+Q7BJfJZh9bvrTDG6d
	 RwMxDYrt79R2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B30C77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 15:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168347268577.9110.4975768029212399121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8575f158a4520a3107d443327b3599f0f004d3b023be2927fb7e6fdbe1c767c8
Date: Sun, 07 May 2023 15:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683472685
