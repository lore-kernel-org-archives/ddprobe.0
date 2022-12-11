Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAF8186F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F4AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670755887;
	bh=IQLlFbf1YOcLSEDVQzjcm1rPsOD9w1d9V/ELDCaWDfs=;
	h=To:Subject:From:Date:From;
	b=vEuQlWpVDvAA7NbvZCv0PpGDm4YJDbTqyZ4xK5ivAD+mmnw5neueSzxg6MVAnu7i2
	 ziM+lVqwCWu+9lX+f9qrebsYR1ITCr8pAUEg761n9tu2U+a81zZR2NlL4BWcV+Bvk5
	 Pspr1RoO5jM7z8qruLM8MFFArz4a+FQhVo33kFBF4aNCUEuDGKHozSSQjQudKBRvMe
	 HhHW1auXC7mkIgDMO+CHfZ12ETeQTMA2yVaQnQw/P0YEeQ01LO8LqmL8/EWMNW0+iF
	 xCpwTh0+iZP4bMTJCNE+mqC/YH55vozj4EHKzOmR4bPUcqxvwqqfFAv01XmLPuzvsO
	 JS8EkYMqVVt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C34C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167075588738.8140.17834536486945686180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6864685cc5c0189e07b35acad573fbb462a64aa1d84f09728e3809a310f298
Date: Sun, 11 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670755887
