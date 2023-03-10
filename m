Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5622F7E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23BAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678410846;
	bh=Ojm2/Ar/mxZxoKwTQYiavGVRWm5lKpwBB8xerwAk56I=;
	h=To:Subject:From:Date:From;
	b=pqbPabOxHo0UOREXbjMQqTBcKMb99GbjrSppO4FMOXN/63AV+hCBr97ylP24sxHIg
	 P9QRtapywCGpFS0RtCYj9IZ4Y//fk4ykdS6pVVTZLmhEgUiksWszYISejZAXRh5Bny
	 ZCknCnQu9MYB/Bt+g9slFsdXcUP4wtSD0nJZ7t7uuyB67H8wxV+9k1P9APMPMyrKnl
	 t7hLsOewklN2ilA1Ep5Qv6yjp5Uxx6SM042jwbIya9Y9fr+Fyqq7mXVF39wAEx9ElK
	 wvdXfJUxzTziFyrNgqOjIfjtggygX2JLJ2bdTQZfAUxcFtbQmkPJTofGm/2p/HMYAD
	 vKGLSCYC0r4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4182C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841084584.5723.18368308934970165682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb209f6e73084cd7b28ad680d62d011e7f4bc6cf52515e5419eace7ced56a64
Date: Fri, 10 Mar 2023 01:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678410845
