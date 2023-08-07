Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487AEFBF1
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20A0C433C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691407988;
	bh=rZXy27ymZV1dXIGbXuTejXGnbzeIABdnVJyPOx9meb0=;
	h=To:Subject:From:Date:From;
	b=IE67qne+OkSTIWeZZ8BBJdzW2j+DHMm5vmPlaEuivhZXOn08w0jfFW/eGYeHKOQjp
	 +3euVSlfJuA6IIjXLWtVoNdCyJNsx1gEDUe8FRL2cmJ6uGpA7L2aiX/6ZTWBcOtbBy
	 /I8jZv3zsyzv1s2w1/hpWoPe1Mi1A21TKYeQWJY61f/YzOX1ihgBZsQOyGMAoo7jpU
	 NIMxyZ0X/j6WPHw0fyZv/661ZNRRm5cqPdTgwXjQhhLAQC4x5oyznzM43ucHrgm2sM
	 jw8nkU244fxjq7kRcPVb7ioN2Xw4RKRN9DIYdgIIrPAQgWkljynBbjIfZy5qks9jVo
	 ilZvVM1gH3bCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A9FEB64DD
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169140798867.24431.1893044302929320390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccde193834cccd28693872ee573f489aeac63de6d19518c09f804597e6b7d64
Date: Mon, 07 Aug 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691407988
