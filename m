Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735A2813
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11391C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681594506;
	bh=yad2Zbq1r5V2+qqjESKtIKbBAMUaADvk3juvrrgyKCs=;
	h=To:Subject:From:Date:From;
	b=bIEiLMYNYEAIr4Kj3440EsTT1qL7ReMRE69tALVY/9+hy/GvVSQCCJBSrstFDhKRo
	 QX5ZasginVruSoeZF9xiVN0mDWQpXGNHxsbjhM9CkL4zBn1yEv+/DGNPWtxiuk/MMw
	 vgLCLtHUk8hhYlax6Ry4BKnBRLDsCe6sKfJgFE0cJrrtBDsE3j9/KWGkfqWT/1hy9V
	 /DUzl8saxA56Vq+zUduZRX09aJ8uH9gcvb1OOje02mlHHBLeyiGPNNLAcdxwS4/OiN
	 PSNbYxBsYLEEZbpO0LiP69ZYYU0x0sq/g7X85b9P9WDSLzai0+XZrsogc3AE5J8CIV
	 MX1cAiY+zrZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7170C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159450584.2979.3472080175231061651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb0267eec1ae738d0342ab5f83cb4f8d20284e7d4cb7ec838dd9401ca0ef3cc
Date: Sat, 15 Apr 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681594505
