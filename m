Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6005C30CE0
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV0R5Cg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C793DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697471828;
	bh=TG8AOfSz/gHr/ozt73Nr+aTDY9Bz/NLYn3T4c+Ix1o4=;
	h=To:Subject:From:Date:From;
	b=tV0R5Cg82IJO9sshCq2GmdJ7v8+CYpB3MgArq3rwSiGBLhqcGScL5u+3o5nBMTBL2
	 +i+7MPkxgrWsO/K6zPOUct4O8fMUm83d0pIM0THYVNXnRQMQ6k/W2KnXTOyFqPotC2
	 tO+tXT5JI+MDaiNsjs1+TNcDn4ED2vTcZKbWQTYcGG22JQKrnMJZot4GcjnvkHKJU2
	 l1gIztFd5XtMPAmQekUhNNIhD99oeknQogNtPggti8vn6YoRPXJBs0O2Uiwz7SqjbQ
	 yH7qpnnzp8Oe2jhS15WEcngzaSbNe/NkkZlJBPx7c9a6D5EYEIertHHZ57HKq4mfAm
	 AwGxOVO2b31nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA940CDB474
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747182868.20665.7639181671080205060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60945644a8cbdf3e7a9fef32e5eeeaa1140a92b82357fc503e5e93fe34f1de04
Date: Mon, 16 Oct 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697471828
