Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F1723B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826BCC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671544887;
	bh=MHb8YYpeCKh1zmdhGrn7XEpMOppDf/QfXq0DUvVJaEw=;
	h=To:Subject:From:Date:From;
	b=gYcKeoiYw+Q4zpveTw1Si6fIaz+rUNkStVrsN8w+rJgBceiscjmeYlDX2bKkOCaiE
	 wojkMQVVOO7PZa95oDA39ytnWsQvs9xGDz9bbG9yu23zN/MAFBPon0qhr0iNUYWhJZ
	 b8rl/ohYLsSgQ211Ix2pr0IjqARZ4TRdsKFcEVr2AlyfBvEzoOK54+cdP73LKjlZhZ
	 aD7JWEB4ywdpgCqNuMwlnEv/e+KkAhwNdZP3eeqGFzGZYk9Pt0ZWFiqb0gDvU2PIVz
	 hOP98v3+HsFmqBFeGvXEX1nrGAZBmv/SmZyhk2P8s/c591mDbhEGt/xQXSqESJ8APQ
	 O+nKWI2d9xjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6679FC4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154488741.27333.5233558308159431127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8c8e07dc7aae27ecad306bdf30e7b32f819484fe3bc9a7ef5f7244ce454f76
Date: Tue, 20 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671544887
