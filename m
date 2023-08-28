Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8102829AB
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7388C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693251848;
	bh=zsFsfmMBDubBbOzurG3hKzXG272tPAWITlKyzlniLuM=;
	h=To:Subject:From:Date:From;
	b=um60kZJ2n26HSEY0e2KtiZXS7Ym714T76T/rvlyKo+u5BUzGgUYtcEmB18h29dkIT
	 grDcAo6WKLVlchYtTBjzLn25THOdd7K33hPMV9N8uifHEWRnKlvV7jIpgbGr53iSIe
	 Ql4F3MXccxQEMOggJDw5twAFdML8RsQu+e1pL9p9UQ40AFNgC0mG6QMY06swqmAWlj
	 uGqHM1DWgoK4RQNth67ZQv5z2bH3RUQPw/9P9WwhYmrvhzB6PaudjXl8hYmzff+wW5
	 knT/MNiCXWRniI1RA20omwKyaW2Ygqodf7eHVZhZgCWKWTLFCWVr2Cu4NubvR+cgX1
	 BpsgOnS12nGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2E3C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169325184875.26288.17323501037552468330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41ead14155248f294e595819b9125ed4793703ae003ac63d1e1dd022e274090
Date: Mon, 28 Aug 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693251848
