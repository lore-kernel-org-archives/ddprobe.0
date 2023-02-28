Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D23D9F
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 14:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6156C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 14:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677596165;
	bh=W93Le19T4hIYY4KpqC5NKbzjiEQVorgt6KVdySIIqaE=;
	h=To:Subject:From:Date:From;
	b=SZUa2HzOUKmCLL4wbHmohBAOCdoCEB/2cggw5SEwJICDAf6SQeujuB2hZKjxX14XG
	 MFiMACkym1Onhpp2BmcW8WZRa57zyycvMjsCIGPbUbgE50vlVhD4j7tMa1/5kuoenm
	 lJ64BZgV0E0GBRUU3+sUhH8JVNvyX1c0gXbVKIasKe9L7NGyucmnBh8besELEL9Uxh
	 ix3K0dLprczQM6fola55F2fupbMqJdAgNTRre7fbt/jBxVaWwyj38eCKVqpfaMc7xd
	 L5qfJ+Tj3iJWjSgxgYVbVb+/8YFKPr+U2VbnxkabQHKajR4ZccAWJ2RF/JNJ5MUA11
	 j5LRMLx3O6qWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C789BC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 14:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167759616580.29923.11195376779028701175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764aea02c1d76a601ed8c7340250c63d1c4aa5b36ec8465584bbdf96a9f11b7a
Date: Tue, 28 Feb 2023 14:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677596165
