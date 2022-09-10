Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF1EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795D7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662809453;
	bh=M/EuD8+sMaEsFg+tVRtoLRiTfMOpnjg5Rh7jn5q/33Q=;
	h=To:Subject:From:Date:From;
	b=dQcpwHLa+FCKyEJFkp3u+nfHah130NfNmMM9E18xmCJXzNph0J0hLEkqEmA8y/5i2
	 OauUOIeYpO57m3bkOfT29/pcEx16kXSqFZjfEthuI+RPATBzetAtnRJshbyj6RsAef
	 KYC56yk8OyvN0De2eeQU9xvDu2aLe92m2BxWLiflqYBPZbQmgU7xZp/SmKxEhKgN1e
	 8eztNL8z38LCjup8qpFPNDV5Z0kfcum/4Wpqlif1cjqV2j39PXn8Y1EKwaFAv1I7k+
	 GBGV09wGsdNJ73cxs5BTxqBYn+iRK6uu1BCXwPFEPa0SBwkfdnO0FO1nloWRrzcKG5
	 Tr7Z1Qn8r/5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553BCECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280945331.24518.6492232205195253755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1616051998eb110d775f77e659680e134cf13332834927ede46ba9adb227d679
Date: Sat, 10 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662809453
