Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DE838F
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFD4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662654653;
	bh=1mWJq9Clzu74SxxYNVwU1oH9o9oNZ28oeyy3l1TUaF8=;
	h=To:Subject:From:Date:From;
	b=rt4c0uoTcxMSoByUVBdnSgB2G+FJxfjbMBvdp5bpAb296Nlvoh73H6ccgry+wcn88
	 WjSV+aB52tJ7djVFvwMbtd9OxLb56GoUVuDU1AfZAwUflbYOrgcisrrRsGL7v0mLTC
	 /Y3OYYz0BHez4xmQ7HI+uexI9bQWqqhgQmx2TOlhrgTND+YOhDuq+s4TdUourOg+7H
	 GDcsAnr+EeyqZxv5zw3WHgL6Mm0ks1wnJkLor0dFBxLBO8IL5ZVVYlGlk1dchMkzbd
	 Zb7mI5z87AFXF1vlTsEme0O9FXb1/XgPh/FqlLC16lq5iiqsX4uAzdRQqYdpHflFLq
	 2yHfNQOO5DG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A1EC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166265465335.30399.3350324860705897890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d78f26b104dc9b00dbcf8df2b8adb716ec48cdcdac49aa82caefc3de46e1ee
Date: Thu, 08 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662654653
