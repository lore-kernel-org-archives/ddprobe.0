Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C332FAF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61BCC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676066645;
	bh=RtlagaceiAd8R4Dp8m1EgRWfVl8vTdKja7y0HDnz0Oc=;
	h=To:Subject:From:Date:From;
	b=PCS8PQCSmYGUZ7tEn08YNsNmDRa/fqD/CW9h8LI9Sb1Mi21F0+4t+Tne7hQS26nhU
	 3Z9pK9KO4/3caS3AJ7ab+QkdtHD7pIK/u+s+kOAHDi0mJ6cWsux6/mXvkztcT6I+cl
	 sp1nIB+H4Qm02qkMegvPN14qabxhMtzYsOZgIm2NRpVkX4g5qNmqzLrBe2xF1C/u+A
	 rsrGEsz59xkqPyzlLFql6b8zfGCaehY7cy9iL8OWVgEDwJHrLRY9WeU4DYeCu25w69
	 iME+OiRgBZQjzL2pBFWinr9W77gRdcc7RVJ+/wcR3oPHFSjuiMcwepYeH14F8cmSOk
	 RC3m6nitgIE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82BCC64EC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 22:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606664574.28561.14842558594077442658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f077a4bb22aaa2c4d7041256ba677f3cd359a70c50cbbef83a6d5ced95872e05
Date: Fri, 10 Feb 2023 22:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676066645
