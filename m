Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA26C29AB
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7104FC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670321454;
	bh=ofm4o4bIbf9Z5yf4qOMFf+8QJdXHaclq7Sy3Y46z8P4=;
	h=To:Subject:From:Date:From;
	b=iZjLbvbt0DmJbWphr/UxUtWtMBKNxlgsjk7pLwRtHrpFggMA4ErGWiLm2x9fgTa3T
	 /JL1vfUz6is1MIO6Dd/dSPRqoXc0fQQ/FedctpmrJOlw3Cw3T0GsMc3GaV5V1Lua/g
	 /Ot7aESJyC7rYbNzsxq1Pseln+Sp+8zf+dElYrSOujqk8f8HaqVoA2e+JdduQA4Nrv
	 2cj9N0cGmA0MBGNbWvN0brc+H6lAdIc6gzNH3W3sxyTxkhQSL5hDcV6nJrWO8Xfdoi
	 GdD5JCVjZ+wZObHe/ZqVTXQk+1ry7E5C5oc8RZJ1xh2+Jk+JVxTfgvZRVYNVRUPs7W
	 lqOP05S5ra7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D68C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032145434.12655.13977257602551983917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c78a4b18d39a12e30e27554c44b676b545bdf95e391f92d97b8256a0cc369b
Date: Tue, 06 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670321454
