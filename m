Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F26814014
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD4FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690561328;
	bh=MqAnsIVglEbg8QhfLXMhdd9ljxkPDZdMel8tpdhl0wg=;
	h=To:Subject:From:Date:From;
	b=NhqMX+lK8hiY4nXqxFkfNyWWbp5ssVJD6GA1CCOFKqHfBIgTuzojbRaTSBxuTMc4D
	 hagTdixejt9Fw1B7zebfCQE27k29iByk3ZSKudCM0uGEvHS44q8e8Ofa8dqd3M45R7
	 +i8axCunSoOOIXvjciznvamp/K3C/2OaWduClf48Kkn6+90GIG1QfUGLUXBkjwxAhf
	 qtF7ehqw+1nQ92IGVst58iE+RrgbTvnk2JYaxv4KJJTW8JJ7RSKbQY6BxWIyYB8rCQ
	 BBkwQyDo2uOzXa8PfqjMDcuExezqOvNRlz0x6r4WJtC+/g3r0QDbMmW0VtIPW+bhnS
	 yfvDWwOJxrxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0691C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056132871.3276.3364770467817769623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76f236f222112dbfb98cf628a46f77974fefc25ea8ab01ee190726325107922
Date: Fri, 28 Jul 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690561328
