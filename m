Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF251362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7753CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669614654;
	bh=F8YnlyEmMocV5ssrdoAanloaMxYRYaWgPX6d9CVzT3E=;
	h=To:Subject:From:Date:From;
	b=GXC/+kx2awdr5B3pYV5EEWyGZzMO0mmG3748olTl2NmFzO1gLL1HffvXLEW0Ie3ZY
	 CroBmdy53H3WMCg+N/Vmq6ELAqxaOi6Hl5FGq/BJ1du4Map/ksUocAkGD21K/F2ZtY
	 owPrexZ3OC31ypDD6jTIR78S1Rvc9M3ZXGxf/KPlRRQ5m5EDaP/iuOY1aKPcGoQqNq
	 zoeqEN+8MiancKIMsRqynBDkboWcm3PBxPZRdBW4KHDVIJ6ICiMWsedcWqhjk54xca
	 lnrblzQ8J7herYPItq7BlS4YA9WfRQz6ZjZy0EWlI7rqHK6BoTQhWWWFKRJC9yCF5z
	 dslpcqPv10AxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A031C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961465435.1742.12662205361316635828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18b5969a84f4e2ab478166fb9917dae56f8c8e47dbbab45193a2c6e7aede6be
Date: Mon, 28 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669614654
