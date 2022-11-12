Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6EC184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C53C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668267654;
	bh=P/2WZTDU50gE3Ua1+msZxU0/4Qj7SSph2Q3UDZlL7Dw=;
	h=To:Subject:From:Date:From;
	b=TvI3Y9P8aQKnDyt/gNZBrWuZyMSinrTKVzr4qRlV2SEwCU/aigReA+hqEWxMewACi
	 Hin2CpI/ppOXInKdSPfVnzzsfC4Tc73wEj72Yf3qZfRY/ZtwQ4l3sFLHPosuuCVFo8
	 cRu+z5Z5xzLu6qMRmIiNQ5pcmTuX8HOffKjOVf/zYw0l7mOJ2+k3+xQAILPW1aKQvZ
	 OuXnyAqtZvwn1vIVjd6N9i7liDVFFl4wqmFJ93MZ9q8N0koBJKXim5o4BnPj/t7Nm/
	 FY4HZZVViLWyZYf/9pY5JKHCD2YTQPB/5ldnN0iFi7q9wo0jttoumk2u1Mk6VZl3OB
	 g6NrZwW1NuDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553FFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826765433.25921.11889405150881022518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a547af0a94064db83389e9c3df73dcb1332f388bea203d5b5dc08e9f6bd794
Date: Sat, 12 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668267654
