Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC1F23C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDB0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667040654;
	bh=XkEFyTOS0KTCH9mh73Hta7xxMC6yugMFZmxn3B46tUA=;
	h=To:Subject:From:Date:From;
	b=Iwk6uKlW2qSYrj0gOSsxbdA2OUgBw7kB3YbYJwvRW4/k5xVhirqj9YXWPFOtsYbn8
	 Rx+ErWr3g9FpTbT0Ubsss9pTlZ60T6kwk0/YyIUMCY2BFR6A1oRjWs1/dXQPOGmeCy
	 yzymHfzesCLXa6rSVgy970OEdYmQxI4/g281Hb2i6uWH/wG5qR+UrsNdBAot/9HsDS
	 JTk4B43MZsQEGO/wmyse6xjZqzhiPDd5Ba8JlZm62tID9EUqRgSGm7hSy/BK9NHCWT
	 RokCob3nLED8GMzNxEMcNVPRHTzcZRfekuRwyyy6HrVm7SJUJ0LWJPKBmEeEbGonw3
	 bEX8anZY2KuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5115FC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704065432.2842.3143175251616101828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4ca4a4da6ba62cac340da4a64520ec4b6449b02152844200cd7eeab4c57aab
Date: Sat, 29 Oct 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667040654
