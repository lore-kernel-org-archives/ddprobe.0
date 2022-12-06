Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0E120EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66D31C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670302854;
	bh=axK0q587P+uDOdcmHGXynw2mPpe/Zm8J6u+R/qOaB3w=;
	h=To:Subject:From:Date:From;
	b=BmseV4kbcnPNnTtKJ4sgRUptYW9MmD59BEQfv9eO4HkeVDfdPteK9XO/JHMimhrq+
	 MQSgebrVGG4oZWgWJzKjwz5/7Vy10foEVzzUKfx3by3w/vcfO1kG61w1rPoveXz/nk
	 ayHVp7gpTxhO8Ue3wafKuJ4zXtpjbHIQ1lZzjOaiUId4NeyBkK+4m1c2GVr27X2jiA
	 9qoxdulX41evaIdGkQrsGr/Ex/dqMOb39sQoEn3LMkcMvnmF78wWY2DQIQuNQB1/Cu
	 IKHYq5xEQxmxf6x6f0EOkBdraez1vJYWDhw9q7oM4zP5D8BGSg1CVByyd3MJK6X7ii
	 kMkgMle0M/wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A54C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030285432.15155.5280992053276855021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b668553d6084c870c17db3553cf5936bd95fdb318020d314abc912b4cff4c1d1
Date: Tue, 06 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670302854
