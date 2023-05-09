Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65992196
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0646CC433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683637866;
	bh=27NKK1hK+HpPX61OeytggHwsgplUni8fOL41kiL5rD0=;
	h=To:Subject:From:Date:From;
	b=YU9+VsXA4odfa8ujD+J+b9VqMJ44zoRk08rO7OuryLwCGPQ2EOIvBYb4C5kWHd4ak
	 YWk4dUBO7yugbSSfzn+CZqgCPxfKfcBbivF+TfL+2abihZKinH30uUQT2rYkNH3+Ao
	 FcRPtyH/gz0e1zAKqno4CNTBe2c7CqSHlHV+wpcM2CRtX1FhQ3mC/CjTq1E4Oy9gxo
	 C1ha3NhEgi6LSz3E1AK/Ji+XKhpKzlEniAyF2o2Wt69V+82AlfFU6GPiaD/hvUti0B
	 RPkZTH4Sgm0KczmUvSAeTfwQppTchgGmS8qtp4VZfA279wLD5RE5j9zwb/CD2lhrkX
	 cMyMC+PQZ8zSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8873C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168363786587.4466.7545407825271372616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b11ab45758959f18ae7cbb6f35a3caf7ed2ad8ede8fe2fb517005768a5c1cf
Date: Tue, 09 May 2023 13:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683637865
