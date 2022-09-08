Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F867C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E18C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662623453;
	bh=tKvwDapsbRRaBdwHFgHTgCUrRdRyY/4kp6KlmUJfIm0=;
	h=To:Subject:From:Date:From;
	b=r7E70XjC4DOpvM6s3e1FOmqBMugbVmVXIJDCgLnHJ7b+bjZfKTPda5X/gxzO6llG8
	 B1X8E2ZiDXcEzDkeD4HaTVfAVtPPikaTUtxgHkuV/RaXdOOPKybHznjRJtNdzHPuYx
	 4wOvOSxu+XI0dF00/fEXLAPTZ/sorfqWtVTQS7v64N020Wv4l1ZKVj5oXOXJYPNYZo
	 hIk4H9zoI5iW5XGXe/SLmt+JvG2+4/ZRtKMyQk2MTh1ksw4BiDQDOOI2KJ/AL/jfXW
	 eJsOst1ai07e6K7ISdzzNHk9xyj5uHYcIlqibrGLWvxoBWnuh3iG942XSM3xCrEYsr
	 0ra+waEuyeU4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBB8ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262345336.10653.1675519938418021094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cc681495521411725569bc89d5e1bcfa70741f59457b40bae109e8fe166a51
Date: Thu, 08 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662623453
