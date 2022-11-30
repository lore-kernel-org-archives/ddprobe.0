Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24DE6FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71658C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669828854;
	bh=vzOBrNBpLqme3qdbo36YYZJ0spnyi5Q9ixAtQUkiR9s=;
	h=To:Subject:From:Date:From;
	b=qOgz5v1sJ7Dj7pzUKdTWJE4d8aILMtAJZlKRVV1KjBWl5ObuC1V8s4HeURYWvd/DJ
	 ol3OhbfBzTmzUvkuiJvzlHGkQCvxmFZ11pO2LirRHpK2qaHsEf3PArzHeyQxrzZ7t3
	 /Z64thk24CmLetklzRpZa00NnAxcxLdTNBuoukrcnuNAfN73PHSdS6frhZJFafVXQS
	 tP6zMNhIICaSDUTxfzIv+nPThHwlc1iuAK1hOR1/b5dbfhcKQex7VLd7jOHLndWrQ3
	 8ZLxwUAZw7QOukqRY2JLuLeJsnYNqCg5LxmQXq5sXo3vlrkeEy9HbT7Vzt9Owzs1aT
	 7YJMjfRrn3FKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A80C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982885434.31802.8722593126642144250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bb9f1b9b325f8e20c50414238097a7ab095549eebb4b11937e411f93b78d32
Date: Wed, 30 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669828854
