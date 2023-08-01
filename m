Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3BB46A0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA647C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690888328;
	bh=1CmcO+zz9/HKZ9a19sypEK/mndeQRmcCCN6F3IjlNmU=;
	h=To:Subject:From:Date:From;
	b=G091rVmi3i7iTImdSqsrSxpwbMITBgalbq+exiokCDmZABSGLB7JiLctRSOqiokyn
	 WIynWXr7cy7iZKGalrWMxGwlvhH2E4JZQw1j6MmHtHePOVaiGSVz9G90O2NyI/CaTw
	 7Idma2lo2wFyD/TxZ0/cTzVF1DbymBr7VTCaReznriFxiXE0Z6pC7PNvP8dxgG5o7u
	 dDo/aDi6eZ4TKHIBjcDiuT6a7XTTxJGONY3A24OZUJmK/qnkoVymt3RRkzai4eSRhv
	 gWUmea7+KWhTRh5e8hPfBadj0SaEts30Y5ZG9b9rUg9exlQCCr5ooL2U/rbN1KOnYc
	 Eomv+tgROzZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71DC001E0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169088832868.1237.5634089260436061882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542361b6a83eb438d1c0379d4e40a1f4d776d94d476f57a8847f461076d841b4
Date: Tue, 01 Aug 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690888328
