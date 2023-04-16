Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6247F4408
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D8FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681667226;
	bh=BrvtjU/CqDagCiY2/cqRNYr5g6Rfx5+VLV711DgUxBs=;
	h=To:Subject:From:Date:From;
	b=eqnGwn7j+Rn/WVcLfhJf4SAITy0cz84ujH6ZRIhXHUpI6+f1rEyFtoOAJz3Ec/wly
	 iwrwaT7YF9c8JOtnmgBNLAHfkf7c4IcBr7gEfYstccDycbYAQeCwVbS7Zc2DvYnGeR
	 F8nB4KE9QFL0DD9zGzMg6kcP4/NDVQ4CoHGd3vpvVdYyc/z9tg0o+N5hAbK/xhUiVO
	 C3wZTUqLJAjr38lrx+nuibYeW/JT16q6CoPu/r0Z/YcUaZzkcXc2xBur+JVrkaWggb
	 QgjG8viV2vVMUhwgIQMHaEy3QavsQcUgETk7gox4QqMOhCeyC27YTFTCEttALGl4LX
	 dS+1xK9tiHWhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5AC5C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166722584.23295.6607779078426263091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31d79efea43f1255490378352eaed5dfed740cb5d17426d67035fd9dc6861f1
Date: Sun, 16 Apr 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681667225
