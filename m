Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40022173
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D20C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674692585;
	bh=bPbg0qS48sm7wy/qdCW7j6zrXynWyMPdOZq8XFZI2XE=;
	h=To:Subject:From:Date:From;
	b=n/B+fJIQvglj1xT9COVYFmuF8y1/ZQ+b1Ynj+TwqZvFkO55jYB8LTMtvg9+KfTGiC
	 g4hAzhvTu47G1/ZdVCsIqscKIA4/X+8kVz/TddQk3db8vOcpfh3V4XolK/PlgbWlDZ
	 52bPhJhmlw2EBxDMuLKXqJ8YaBq445P+/GZ9dtAylehpylF0ZxDyXDTs0/9Pw9+n5J
	 QmMHQUzvdPFcmow+f7bgSISiUlAzw4PYG0ITdq+BOpsYjHNNd9ylSSSyID36T6x5U+
	 Al66sQ51xI9HYwzOSERzG3SaSPR/CoKqNvlVD7ECXARkmONTknchl6bhhVjqBJhiDu
	 wO+kkxCzg0bQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71F7C27C76
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469258573.22346.10631967711964021307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e027da48dea608edf32c2fc43b7845cbc9bf679fe355dd6cd2d76678315b85
Date: Thu, 26 Jan 2023 00:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674692585
