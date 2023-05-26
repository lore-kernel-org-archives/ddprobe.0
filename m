Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D45B2CA9
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E644DC4339C
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685138765;
	bh=gbaVFr0J/mTUwaqRG0LjcBrFXkUPU/VVDtZFGvbmfI4=;
	h=To:Subject:From:Date:From;
	b=V+kR6LabMSCf22W9A5NeCkWh9lxCpFU+S/AFnXqlQ59wIcvdK9Y6hA/5P5ZehGilV
	 PWQnFiXg5Aiz/0F6UHkBxdGDdIapqpgTrJWYdBkG22OXpCG4w3JSIr5cRrOf5lG4op
	 iciW198NRcW1p63JxLUN+uSDQ+z5awFyR7RivGAptfRDdYFAS5U2oWIqXKbXdPgqaa
	 j1ExTx7cyI96YRvTzQnRBHmHE0Wt5oQ/aW6aY5AfzB559zdv65LrZOW9UCJHz4TGqk
	 i2uj45ulJqmR4C1gbAufFoVkyL3qeP+78MmZYkMbY+xvkfwAOuLuwtfTCErLjwBlPm
	 vHCOVMuYmwgJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EBEC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513876580.19837.9212965947918021158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9d13a6f2c1b342969afd1b86a73bf86141d07645faf976ccc0a421e1ac03ab
Date: Fri, 26 May 2023 22:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685138765
