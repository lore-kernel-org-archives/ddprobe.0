Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF2F61FA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67554C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663748453;
	bh=+6AzvMCUlF1Dq2IyTKZOZ1g4MwWher/2rsJk70khueU=;
	h=To:Subject:From:Date:From;
	b=kr6lGeSLjpAOZO6GxUU2yAWaUjBuOhA6FWeydUX1Mmhji0OEEgu1mqO/GzmJ1av2p
	 lRR4T/KFkkzCu1pR5lmAzXU6c9Vh+VBxDWds/emFZw7w9OtN41pyib+W9Bz6LKobIq
	 Q8U6zr50C8GYYRnHVoqFrhBJiagpFDbQzgM4nTNAvB7r9m1GkxVfxSuYPuO55IlB+J
	 Wh265YOUzYVT7pkqlOh2wf75PI8dzBSt0HxEMJBQuerwAGrU1apxmj/F5by/oCbn2l
	 34L3fztOCgpCgFrkTIewkmav2eyzDITJQjtJtxxGYNJXxDkd6gx+TspmRvoclylkb3
	 yEMFFZ/QyfOLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5360AC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374845333.18767.2366314966843186353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fea9324c08a91a699a2014fdc26b8028f243b44caa9dac8d4e63dfcd517b645
Date: Wed, 21 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663748453
