Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFD915A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D89C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669426254;
	bh=s5hN0hd89gy20GC9UDZsCto+XMfJkJY8kcZ8qOLDlgM=;
	h=To:Subject:From:Date:From;
	b=b03+L4a1Yz7T5JU6bBD6D0wuAYgLPBq2UaMR7dUiDuEfJxZMiQ6IFJzHh2sWCQeGt
	 /weqikEZhs8g4Ns0v6CSpD/HbC7+sYreyIThA9nFM/DYLGp1Dks+FqYgLUlZvhsK6L
	 wc9N5u17zKIoMg5O4Cj9PkF38T+g3+ppdHgV7vGWmETHz/RBpfXPZa07GZMf4mxVbv
	 YKmBpS8hP3JMtVfnE/gH8sQPn0fG2/IPuZlaVtsf69Wmd8YiMPSWLPYqwNoI4NcCZc
	 5duvEexAhs0HBPUpIOYXPwZWPOrdMlOU9uHvLEbKAG4vx34UoQecH7FgxN0zciVfC4
	 5rQdO1yXR5/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6816FC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942625441.29337.16107386335226621553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9222400d6cdc7138c632579cf602888ce6208352ebedd84257306d6ee62515a
Date: Sat, 26 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669426254
