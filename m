Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EDF17EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993F5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673478687;
	bh=TTwrBI/cjJWTFkbg7XSD5H+RfvlT0aCJe1sPvwRmtA8=;
	h=To:Subject:From:Date:From;
	b=MpQOmI2JvS4CbqvBa8qk7nKlX2J6iCiFQaKk0bM/SyU0dg0tkee4YmA1YMUxd6U1y
	 eQhZuBSMQTol/RNOPqWwSs1EYN48j6yuTNi1jwES72+SzCWMOreCRQBDCPmhHGfOpF
	 lvrQz9cGsQvD4cH6S8uxjv+9mskEYPdaFksouc1J1Bbb771zV++ZwbA/oHvwMgek1s
	 O2Y5BlAMR3JR8jFWuN4nk2ObmeFQOtefmDSNzH6WVb76c04k1m5rncybw/x2fup3k7
	 ItVk9BCRMigFqyKyrCuv6cObaWta/T57eH8aGvCKkbUcFWAWB/gXY3vaFxOh1dFIev
	 Ji8xhlNa/YfPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C132C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347868750.12491.1266267286576342627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7535faf91a336502978e0ff82fda64f9bf4b1b1ff1f6df46d3327401addcc5f5
Date: Wed, 11 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673478687
