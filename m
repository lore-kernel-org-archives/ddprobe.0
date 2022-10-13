Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02B320E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AED3C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665640853;
	bh=nduKHkXAHCGJtOejUAMGB6OKzNA5SnAZ8rKqZpiKGIc=;
	h=To:Subject:From:Date:From;
	b=L89Msg4Hd7WAqOEayQRzkD44c0M6pU+781zKozKWUKZ6h40OwPAA1DSnN+I2YEHz9
	 zt+GjNRhkBSNY8fxoZAk1W54aZye45J8sJUZGheFoJyUDrZd8eS60ewM1qZYsqfAF6
	 B+sDBo4iILihhu7fzb7F94z1+QDTenAmM539B7P6wG52RG4qw+CA53ez9hxgQvEjgk
	 BUjKW93RPo3rSXrMNYFB9Uv1Q6ETRdIXDTpd00keVvL04S1ZUl3rQQMoWeIfBB5R8a
	 MBkPuRCSK3+aCrYCSmJ3WdfXum79kggmvH+qsfRSu1R50ayEslNG70sTZSYrx5xytC
	 JdFmgfKqx+5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4DDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564085331.28175.8042100165701068757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7373b0195aed4af4b218e2cc722f5f277f1768b1517bf10a4f2a361088c238f
Date: Thu, 13 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665640853
