Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4DC2571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 933D1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670778087;
	bh=KCgGEVKIdZBMSiTytxF948OV08ByeHM24BUwksZSIeM=;
	h=To:Subject:From:Date:From;
	b=Od6Fcfervc6+DEd4EUGP74ytDUmnMzcBycJOsSEJK6kc4DsXszGrhRGQrJ9rOnvzc
	 aMkpJkNSTOudBXL/V0w/2R/G0yhnrOBWx1+tsFqMl18Cnad2ohJulFMMCC9DlN5OXX
	 7FFOgoRqqfXBf3nRJIuAt7n9A6qns0DEkCBuQRgVFLZamF1qSynu0Tn03+qglnXgQ1
	 IthfHQGkgmK2Fz/PJEWIRZI0JbQhbyXYS5V2Jvn3waolJHOdl95lguP0nvFAVwOvHk
	 HrjxHqMfX6IB9uZ2S0Bn/kihCJ+e0DYxT/d1qT0VOS/IQUwo7ZcheunODopHjMXb+f
	 OaXlvvV4KmbrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB32C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077808740.21548.10415171964405426333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d605db7e026bb7e3e476814162bb16bce09a021e11d477edda409a4562a553
Date: Sun, 11 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670778087
