Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FCA1C06
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00326C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686549186;
	bh=E7VPUWnC2QPl7Z8VwKc6H2PcXz8rjqJTuv891qGWcLk=;
	h=To:Subject:From:Date:From;
	b=B58e4raOCFZ3XGrBGNSlYK+Myj6b0bhOCmfTaoBXQwIKI5sFgcG0sdGjKhusYPuZT
	 +oIY3vYbZowljhguSG/U5qEA1Flhe7nhPo7T2srCi7fazvZCxPTC2gsN6XpeZWrqS1
	 Fw6Txmx9sy+vnk2cpBykIKmJh1e2wmlKuLUNe7/okIHj3Rb0ZJhUwFyfF/dC+cZ7qn
	 YzqrMBb9+dLQ8aRW4k/vrpYJAkJSwSKxnpcKCpd1pnonT0J+M2yxJUj3O+JD4KJFXU
	 e/aymLUvCmymPc+JOIpCJae5g0Er2z2NzOiCpzB3O/jD1x9mY80IaKNr86sUQ//bgx
	 8ONDkLqrPDvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D61F7C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654918584.31626.10073225421231729574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b216938e968438d7e2a5b55eee074f12b3e283b7851efeda800692e28ec61722
Date: Mon, 12 Jun 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686549185
