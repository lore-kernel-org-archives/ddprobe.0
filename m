Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B367E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58E0C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672620687;
	bh=zfbFXqvhcbQD5rkga0dT+qaHkn/riwTaimp/eEp1r/Q=;
	h=To:Subject:From:Date:From;
	b=YSYgI+G5lD4qOP0LXLcDHvJgBvAe+dp2AkY2v8sXcJwB99Jqu25RcLteDubZBObZN
	 CM4TSqSWfYz8VmIa50uJIa5i+9OIvAzk0fpq8g5SUE0/lXDYI3CFQHD7TLttpt9m8d
	 MW+bx3UOxlO2pROY0ZMOrCaScRSXiod6Uh4EFY4zxdyLiTxEofjwg0Qeji0lBUVcBQ
	 kprEbknX5sL3gsd3aB+GfYFU1t480b2Bc1Q6+HsY3z9rye+vfAAbHvHvgWUYg47Y1H
	 aZeZc1CksX/sexInMhYZsiPcs1IWZEoaixR82this1PPstMblBLP8FRqFuGO6Y0ha2
	 aHzNpZJ5zlx3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F90C3DA7D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262068762.2795.5704543945916187769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b623214e3abb64d7cd0202a705ee89a6491048e179e9031e6a3d3be3fc7cf1db
Date: Mon, 02 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672620687
