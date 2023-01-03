Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EF7625
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B3A3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672731687;
	bh=anjuXE11HyJeSILAtMhX4vcCSReqBoI9chEEXSWddkk=;
	h=To:Subject:From:Date:From;
	b=qJ/yopbQmXP4QW3THMTOtxuG6DFdqPNp5KKGgNFsOW20eIq8XcUjF822zFS8oEiGW
	 yokZroekmzyDnZRHFtRhce+lYn3AsdYYgWfc21ZlBMsBjGgTudQIgWaQaxT8FXteIc
	 7V3siRMZfPuG64NaMDWM8fvNXyWNGQlJOqy6kauiWmYxnrPpSqkQGROAKR5KYaya00
	 dqFX775Rj+0Gy+LpcMZJ0D4B6s8xeNyWvhTK6ZfTCY02D3BBUbvhpsv0sVdbKSDMJO
	 oyAW0FtKRSiV0aIHJiIjOGYfDqi9NNG6WSpVSAeSM/yrBIHiH0sreS8Ep8rX8eCYXS
	 gsdkRRlWdoZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B9BC46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273168742.11541.11707554823602661114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea231a649d93d0b4efe22b3515c230972aa1506eac322fba469d2838275fd50
Date: Tue, 03 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672731687
