Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26326622
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E045C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688698029;
	bh=+8bp7Q94WqPGvtNqOPa4k0wUh3jSCg/TeTApOakKD7k=;
	h=To:Subject:From:Date:From;
	b=HyfJQRrHKMiR1061n4GWJoPF7SA3qg1nC9tQQNrFvFP5kbA4UBu3XP77YDsyFqDcG
	 cRGtAxEYbfWsPVerXqyBgboh0+FUWC7WVNeUnGN96cDAGGfQmHNs3NsGbU0fEsUtpD
	 nSdUiab5p+SAPaFUESd1VznhnoukbiXsi1Db28kd98pE8/gHdl8mgaUuNZyDEvStdh
	 o+39xTCtPNpazeKXiFIrc6+3IAh5WcH9P/6DoLzIo46H7lCO6OAb0rAldZmckpa8XC
	 5sMQPAbCRDutfJYHGE5+n76ytvOdiRO/8a4135vAhhj+6uhZ7pM6Cztfq0gnu6mO3Q
	 sXBiR76yjIq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDBDFEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869802889.28406.3844331066845571239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4de697e99d2ce25eb2feb3a3e6b46d7a10764fd80eb21bdf02124b17fbb4c0f
Date: Fri, 07 Jul 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688698028
