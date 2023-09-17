Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524964C60
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 15:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4A1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 15:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694964308;
	bh=+6yUjNqFbbVtgOaNFMUXJwzzdpAThUbHN38NJS4JIB8=;
	h=To:Subject:From:Date:From;
	b=ijDlI6tFgaGUoq3sWiguMdSwZKAUCCQlLKtoF1bJwfd3RTRSatR9DkkWrtpLoC7Bs
	 SOTYYR4XNjj1fPTZDN6jBwOkTu3EO6/UjFj2Xzq1CQnGlkcYaCPahdMdQY4CAThLvw
	 VqYw+Ph53CAH2zejg0NTA/Ng5jEXE4hAVd7XlZIiw+YGaUYResgDSerjzk9/8omhNd
	 0iDa5JAT+4VfsO40XDK0i+AO89NoMY+em3pp979O1R2ynxwS6QKY/tchP90hQVD614
	 LIw5wrZHEMiyAXHqMaehAgXdKyHbNuM3XCHjNDSe6JgzMm5XNu7UStjeKXLbQdARAv
	 OeF3mEfwKdKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC416CD13CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 15:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169496430868.24026.3215607003337566688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c3943211b23068b4b90d1ac3e688dade2e00cca27d7cf13da66a76e32f8510
Date: Sun, 17 Sep 2023 15:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694964308
