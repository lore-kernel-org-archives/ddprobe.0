Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EDC1B291
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXmort+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CCCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697211428;
	bh=9NmyfEvAG0+mjm5K987D7fV8Iv5a4gR5LYVZxstX7Q8=;
	h=To:Subject:From:Date:From;
	b=pXmort+hrqt7u+VauJ0JlGu3Ys7OSMWwAw9tOqE202fkeVqBFV2S3mhMyPCOKyqku
	 eDDuhXwD5SPlDsiN0gOZfeEek4FuhPD31qyBkjm6DUzHVtG7iGnNYLVLMzlSfFv+3I
	 4wHUtMiEb3Bj7i2ETwAhOS3PNzFnFmHM/8UVELPnvcj0+Z5N2LTjKShy5gj9ZxbE1K
	 wM3lNH/woDhIRtlfzXAMXiNbnpIJ5a78u1dSEbwqr1GtYxcepPkObVow7xDGXW/C9f
	 Yoop9N21QYavY41cQ7y3Ui6a9lH2zVokItZvaFR/LZ/KF9zdXi3NAPPbp+etKef2E8
	 4l3TGB3UFiVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D9ACDB482
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169721142872.9284.8536931569215832476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7860c311809ddc332f99b7b0465e812132b281a83b38e45a7844ec5577b270e6
Date: Fri, 13 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697211428
