Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E226D1108
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A488C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673850087;
	bh=hAqkPzFY/rtkh3GkRy8DZmjkSBdyvYNDQ7biV/C8PPk=;
	h=To:Subject:From:Date:From;
	b=ZkRxjds6V+IQARf3h+zgqi+lIApC7Y6LrggxqInA7eP37C7L1sZt47OXKOVUwPOqK
	 BIV9EvCexJsN4wxJ+O2DrqMvKviBpn0syOJZ3OkvBXIV3z1BRnZzPIcWYe52eFgALs
	 91yXYwftpQl5o5ksALTa0O0T4Dg8U/i2MYpO36jK6+6E49bXmsQfRNDh3vJOId9vPd
	 SiaxW1Mm2K+ROMcl9OerYFtKo+CiRppJTzo7htbmOQqIhnLkly6HsUKVe6LYecpKT2
	 mOMej5MVvGX+NyVXXc4r6kee9Vsx+wf1u0s5mA3mRd5GPSzMz5MqtK/ZwgXxjmejJv
	 mwqv0VHSLUWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A89CC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167385008739.29691.12101613783510407625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d1930752a1548aaca77846e0fea9d92f54fbdc135ee1bd31422e53e5345fbd
Date: Mon, 16 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673850087
