Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FFE20EB
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719DDC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664085653;
	bh=n/9ll+sUIgkHQwPW7I+e4mc16muH6rX8T3Qrm/QlG+k=;
	h=To:Subject:From:Date:From;
	b=WIhcAivG2z3nByLgkEl9b8809K9wI4IKoeBBUgEQdetzb//+qinW6wgnYc5PFwR2l
	 qsbYtkiJQRAMz2j8RjQQrYLRQ6m2PyFd0kn/CueADh5FD5ymApZdzpB1lv2Upywk9H
	 nTHmiIbogPaJqRwwxc9ssnrK5aqKmYCq0/ADMFLlDJatNnYFCdSe+lZ/lfrH1ytATh
	 ZpW8FBiLrQuFvgsOU1+YTLsL5zKJFpDgoZoXLJxHX4oks7UwMLMDTyM/5yELLR8xWX
	 tyazz2k75qlq/DxI9vdcT+il4Ip/7IYzi8e5uIjZYMfHpLQCJWDOGOyJtpJsl90yvu
	 b/hO9NsgX0b0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57987C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166408565331.25933.17669914086675200325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 350e2c1fa8347001ea72b8a19bc352340dc1fb3c8dc7cb70fa5b2308bdb2ec17
Date: Sun, 25 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664085653
