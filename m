Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11B17C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8514EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672887087;
	bh=vC/+PmKvWE7MEzG9Qry+B5HS1yBTLwPx74EtpKeGhNc=;
	h=To:Subject:From:Date:From;
	b=qS5pVnq+hsjxk4261HRSbx4gO2mANv1Grz24MuZbQczil2lfnwKmPi5uHmzrE8i/q
	 UOUUBObkPAMkfuQLHU+Qk6yiDt6L76zh+/aa/NPxKLihC55I7jQ2yHLIHQICJUj03Q
	 nW0+MApKDJOUxdIHpSM4O7q0kOoZ1KURFjJlA0TeNp2atOSICtFex0tV3QqQB6/A9+
	 IzDzn7zIoLQIkpSS5kNwKkFgUHPSGuiVTz8yu3sHDC1w3G1rnfW9lm8/YWr8fFDPQ0
	 7e0hbJPWERU3lDUNM4bYaHkog+REiKEUdSVWvCbpQ472fUeGIJF0D7L+Aqaxk0uGf6
	 saXQg/vSxv9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A3BC46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288708740.4321.591795889333933705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c614947b6276a0044506edec44728e25104509b85108561b60185f8685465d45
Date: Thu, 05 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672887087
