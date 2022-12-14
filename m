Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54FF3208
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C40C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671046887;
	bh=QHNlIWSw1pXO1adZBAWp14dAvHAB+pdvhAfV2hzLIRI=;
	h=To:Subject:From:Date:From;
	b=MxQ+JONEE9fS2Zsyp1a7JUtJg7iilmDJCCB+xHjuDksj1DzEPjx3DB6OBKFAC6YP1
	 nhqQ9rF1LqWN4nVPBtZVRgxKbax5sHCJgyTt0E0rEZbpUNJTFsraKII5BRQQsI8iqc
	 QW8k1z0fKSl7f1GxnIzPhVBFGHZv/L9FAUPt8q5sKQ3uqZ6ESjxdgg8NK7bw7U4DOf
	 uNmf6bp0N+BENg7+4i18wJCD0s9tKGMk5h6YHmmEXX1IeiBJ8UzvGIPmEAQWvqMkxg
	 nI7BbJQW6nUiWa/RfzPQYBY/CN4H7rcR6NOxb8kiiLE/MkqAjx4Q+FM2sjvFzCe2ej
	 gwKzOt2OI0/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FC2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104688741.6269.4138251646513242424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac17f3440125a3fa95c52adcb0094dc34aeecde80b6ec2fe4f6d1554887e433
Date: Wed, 14 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671046887
