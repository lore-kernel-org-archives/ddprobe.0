Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04EEACB
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E18C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692374648;
	bh=UJQP5DC+D3SFHoADot+wDbkBY9BGOv2o51rmuUipUcE=;
	h=To:Subject:From:Date:From;
	b=hnrcJ/f2pqeQzwr4ifR1WehjzU1TwkC3GES7lFAtkKjzpZ30s1/Ml3Ww+UShxgB9e
	 jxd1quJWsPCumApWQbYwwHrtou8jAter28nHJZ8lohNCohRwKVj4xqloBIaJh/4sb/
	 S8tYHONXp8VWHcVBGc80oG3prPnn3P9b3qi+GCfmxC5vzMZTwSOrdc0e6Nw3fuT2MK
	 d/I4eN0d1dcDnVVsIdZecQURqzD/8+dmxtuK3njNaxS3nloWavXmCcbWNmzpau2FoP
	 eXHHiQ3eyjoOuzmsyJqHAEjHjnc6K45B/uqcaO3tgIaSHMvTxXwaoeuoUIHe6zS2Vb
	 GwyDfC0jguGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7164C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237464867.7556.15878840427818738883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b489ff42afc620e318c54ced75bae52cea9f3e46f34fbc19d5fc95f3f4e5ef11
Date: Fri, 18 Aug 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692374648
