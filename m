Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9012571
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 933FCC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673254287;
	bh=j6x0laPot5ECSd6MtjLMjqMyfLrS/SWgaav/o3+V03M=;
	h=To:Subject:From:Date:From;
	b=gsDe7GD0wlesRgFjbhNN7yrviCLHI/IsthHd41ODibvi8+OPaW/TtEf0A99UH81rh
	 4j8zetIaZDZJfTbcd02acNlnM2Tali8TmebFazpln2slQRb1lbQaRt2P6GHSho0bLp
	 pP0v1sQOe3Fp1rr/2QOWg4FTc2IcOj9YfadFrm7w1MF6BjRI1xYOEA4L87uYhKpd6H
	 0mqHRKVYSccw4RnOUub8e9ol1hVEuyRSBfR8lZhg77zkdCJ4fMIHwQJqkT9wpkQdDj
	 OjJFOMzfaZ+BrUjw0teCBh9SDCQ684hpRgzAcOIyFE6hUFTmTR5LOY/1zhOQFC7iKg
	 nnUdZ/NDnu0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B21C677F1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325428748.15438.3851592417340627049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bed3092a60ebdc6777c32a367b2d8f577b2a12268d06a765447586e30a5289
Date: Mon, 09 Jan 2023 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673254287
