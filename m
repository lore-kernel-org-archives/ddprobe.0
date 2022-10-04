Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5B87B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754B7C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664856053;
	bh=zVb19Zwt7oaTY37plMwRKxnSJu9LsSKEI4MPXmtGrB8=;
	h=To:Subject:From:Date:From;
	b=nUmqh4ayh4ds17tg+KZmcnI9rscTKvDw5GO94xuFJekoC3wXRW9fHKXNQxzq+TDI3
	 /bNDRTG6WQFO+SY5r9lLUx2tbuZhREgJTzOgshx2azwbKYIkGldha+sJsManlU546T
	 PqDmbmt1Dk2+I5qNAjjaprzwqxjqxeH84Ro1zznq7IvghmK6RRVYVQZAIkzgh1VaY6
	 Wzn9MPTPB6UYu9FqyyLyiKJ8vefo8GJ/KMW+Y4BOKOWkbHRP3BnHuIRS8ikINzjTZk
	 y7ObLRMKIQXvKAudlJfXuGwCZ0RQ6yXlDhF0NnOpsJdiGJ88+rjQmKbMX4dDN1wGtu
	 z3XinG0fO/nBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59455C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166485605335.16713.11162419686766098762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ebf857ab0b57ca233912c3cf9f9e2502302a9a8e78a3cec338f7ac9c49835d
Date: Tue, 04 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664856053
