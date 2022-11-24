Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3842589
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C741C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669294254;
	bh=tb4kUSd+zAm26jy8a3bq1JG+VOXICEARFgT+rY63EXE=;
	h=To:Subject:From:Date:From;
	b=Mj5wrVub3HBWem1ypr5gYG+6/pPAMwk7q8OIz7Q7/BBnrIhQLZm28u4gKx/s6UTEI
	 fReFzB7H/e5T6QI5tkg/37dh/klu9fLBE2SdygUBSTMddqVubKi5xc8sI0B1aqZrlY
	 Pf2KDJB6++f98q/WmBrkBaYOJwuIG/m+PWwQ6tb6L16Jzh9e/eFrTBR0eu7CXdjF68
	 pyRi6qAm1u6TjkEYHEGXZXfk4EM6OcWXItv7afXkhA7PgRkZHcU8enjcqqhBXlXJdD
	 mQvPBr794AFNyelxy4A233kR4NkQRO2tzOR04Ob6I95MWRSNkiiKMkv1wFUACghYRo
	 BYZ5WIZpllkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B625C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166929425436.4408.15478050950623186489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd29081af2803486b21caf4afe3ff4ef73d4b562c6298cdf69686b49d0c56338
Date: Thu, 24 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669294254
