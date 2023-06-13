Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8F23ED8C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE606C433C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686694628;
	bh=KW8d8dE6+Zf0w1uaIbvvvsWOLu65J/i3h2at4dxH9Cc=;
	h=To:Subject:From:Date:From;
	b=Gaw3SbCLFUdMnXIq1fdUMpLCJsutjOlK5GgWhPUXzSWXAhoIwaPjMBjW1aF7P6Y4g
	 ShnobVFZX3DNldaYqMoebSNElQT0PibiFLJZUNtIkcd+OFcT9WDo8Mk1yHlDT7rtYV
	 IbT4I2QeXzBAUE5TMmMpSvlCLUH61cdI3DiZwL4zOuwqHMQoZs15039cgP2s73ZeRa
	 SGXjc6X1w3HSujIINknBLjyLiRRBGUK/9xfeOTBbx4FJLKtoapCuOi3ucyuQnjwJwr
	 iTHGhgiubmB23D9xS9qsuxCtoRERARvklXX6jRPQUNcDOFq3si5mYLvO3X3oIBDBIN
	 QH6wn5W88J35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DF6EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 22:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669462872.25601.542396093695536516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d52fed5d04d4aad3f552f4adc1fb6e5ad2ee407856118577564a9a412cd052f
Date: Tue, 13 Jun 2023 22:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686694628
