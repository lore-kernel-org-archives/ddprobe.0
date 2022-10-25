Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5A77479
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D9CDC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666717853;
	bh=uWGPId6ABqsNh56s6zthKWkX8ApNQJaF3CY1iGTC4JU=;
	h=To:Subject:From:Date:From;
	b=XiZXrZSbyf2huZQZaiv+to4Zjx06Kr2N0d2h3qpfJNIRNKSJ4kI5RChMNpMCU/iKI
	 yM5iNK8rFHd9ZYLFORKMRULgqthfpJH4SVFCF3MZIKc2FdbbJCeJ9G7KKyomAc9rcw
	 rZvQDGHpYwYrVstULWHCcuiNzy9GZrAXAbt1OtgWKhG7QYa8ZhEcZkraJoyEHXD14a
	 ogBfWFcUzg61EsogDk29mUVQSRDD/+zqyiBTqWfvlO285BrTL1xH7/2ntqh+4lEwfV
	 qiXNqMVamlumPndpkB97O1640z3TGxC2Lzdjtw/mEOqTqPDWIpcUUqEaTYcwTynYv3
	 6cSiy8/9KR4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5714EC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671785334.1048.18141247993458283794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf8a34145e6c8793904e4a9ca05b6e7109514f08f4ceaaaf71e1b213b791b08
Date: Tue, 25 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666717853
