Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402342CA5
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0014C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690911728;
	bh=qX02lybA5hxOGUCefAc9evjFguInUGSXhnVHabayLhs=;
	h=To:Subject:From:Date:From;
	b=J/xmzSLCWnjK5vPDglaneJEkk8JVmi+aZchLiYIyeW/KgdCuhdWooc5HJ+b+90fgY
	 S1DFc2UyyogqbrSUZ+ST19Rl5FhW+EuDcIcsRXO0asdW6bLF/9eWpRcFGonkdT7C7r
	 IztppLp8vupPJcRtHyip3jC9eHHeNMxCt2AeYLJOgABvcubidTeQ1977TKb6NYcqEZ
	 Rl25qwrRIAi55IjHyjNhbJGJy2IiMRd2/YoxsA1qIyo7Mj5RNF97hLI0MCWHoEg8Xx
	 6BtygnMSYLCGBVIwTYjxo6uEupzCyMrUp8SSm4agWSdrASyR8e+Lv948wQgtHUvBPi
	 /EHDYF2t7xHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40F7C04A94
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091172872.24907.552250180478007429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48873a6cc9b8dadb21fd68763fe27a661204f7d06450247af116f2c97b41aff
Date: Tue, 01 Aug 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690911728
