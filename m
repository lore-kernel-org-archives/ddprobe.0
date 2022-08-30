Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E62399
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C555C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661877053;
	bh=MDeoIYfJWMNRX0JaYKQPaGCUjeOmcf6fvv9dOKdT1Bo=;
	h=To:Subject:From:Date:From;
	b=Cx2Otqf7z/JkzzQe9mqMDPGmcRXkIow39fTts5KhMeLW+3k8npQEej6CpFtm/1W7Z
	 qsVk96E8rZgjnqeck0jrgmfoJOoVE2jEIqYvbgwUE61FLpivyG53YryHv8Vm6e8eXc
	 6MBqCtoBq/sRunbevcfuvnA1+2ekdzdg7BMY21+eoMzvO7psHr/SafX8uVj+3hPhIu
	 v263VjOKAO/Q+WvY6yvJpFQhCxHsp4d2xd8tXs1p/XTGRyHcn8XWb49oVoj539bbm2
	 iTEt+DNsKaw2umpU4a0/p89wPQVs/0d+auD71T5EMIo7iJKBSYzS8KW78zc3/cPZkd
	 nTZ+rwNNVYuRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57971ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187705334.20076.6496886657226120452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee33899f05abf880f5d1dbda7a8660e9ba82a3e2e675e0cb9a49c4a8d42a76ca
Date: Tue, 30 Aug 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661877053
