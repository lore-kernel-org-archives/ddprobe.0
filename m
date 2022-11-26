Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBE5196
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80521C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669451454;
	bh=0wF6jHKvzB4/lEeTPc8EkAHppLMUwArvyop+fmYsWyQ=;
	h=To:Subject:From:Date:From;
	b=t/Ci7K3aOk+ch83Z6FH0XHXpxQnDvNegKav60wLMVsoPkNsM1QAvMaPKMNhO7fZ7U
	 +cyqtSQOGUngjC+oRggZEON738pO767KGfcKK/5/wOAVJwG1Y49e4UXhK0lW2Ljw0S
	 eXMhkWwiFzXVTUpa4on/PhbypyWpBHuWZ9J133RpP13+AV4zx8FbuLe60BJJch37ml
	 Mc7rcwK47W62ngEgkG0EBQ1v9ojC4ToN8s+82VmjGjfxxP0Ja95GYBGvESyzDG5V2D
	 vtne2KeBsEZ1kV3jOGxdUjrRGc0MWbDP0Ycv38oaAWJV5trIVRBfPZg5KckAw9qcgl
	 8P+sbQFTdmpVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65686C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945145440.23317.4879181203604716347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4757cbede7b4d1a5d2acab53fd4ef6763f15c3f4b9372eb48781616d49e0596e
Date: Sat, 26 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669451454
