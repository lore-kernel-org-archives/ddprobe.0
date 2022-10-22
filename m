Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77354409
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76440C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666460453;
	bh=dNgGMO5/i24BXjU8bzbAf2azfQTvA5sdEQCFPSmT+wg=;
	h=To:Subject:From:Date:From;
	b=jKI6iW1az0G7Sh+msA1ISljMNW07ICqiwmN9KuA2gi3Ektti+whHoiyAlgCrSlkVP
	 KAw/qMjRZG1oK3HP+xBYe5UC3ztY16TWZYQXAMLOz/py0jIh4GVmgEnefhNMdIjSvV
	 RHJjxSC0kbOMwj/F/RthYB9keOsAS+H00G4mkgKPt4/0gn6bogVMhdrFCOyrT7Cgcs
	 5XklYAn/7pfqQKP9bKYrtOP7LuQCg79Xg3Eh+BuWmMq/ejwMrclU7D7BcKTlIrGzHl
	 EdjBpWiqs3gtOiSta0NJaSNaed8CZFrj+Bokq7NeIg6JzcgoELznrrndDInFtaZbQW
	 wx5gdV+/Oe2Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F0DC04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646045333.10323.8202496132152660162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68b577c3f558b53f59f0b2db8caf88f8442e9aefa93853359fe640321b15d07
Date: Sat, 22 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666460453
