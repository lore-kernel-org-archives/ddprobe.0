Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2142358AB
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By1YFBQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85878C433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700168896;
	bh=goEHPv5uaxumeyCdOJdtPdu9kapTsFlaO0Ud1R3PRko=;
	h=To:Subject:From:Date:From;
	b=By1YFBQa/02D9L7QxA317Chn3eULSTEf1yjdjTTjO3OIlg9jwx1PeHb8P+QeNcphr
	 SMwftmfr2W+lzDvqf0U/VwtJMAAxu9BC3K7VDiyPTrohWCoPEkXvl3tqh0rW/Pepjs
	 CQP2R1Ra4tvW15ePNRgEjjMgHXgKlPngAwIlN2CmE2V0qmykjbNGf1S19o/kXtdeGg
	 mdjGwWE9H52SLvJFG6+iw3wxbHES3sw83TKpqgU11I3ye7T8HwUQ1Z5QD5rkOWSf2N
	 Gj7tSVVVYEdRsSF7NWOPBz+qtWy1JBxVMs8TpEFWVfn7XDFRTjYWHtC09OZRezjCd2
	 mmIfCyZGNl0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69646C197A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170016889641.3263.733130840210551208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b657a8a713fe1facc947d8c85cc80d8b0d47ae1dfde075d3433642214d802bc
Date: Thu, 16 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700168896
