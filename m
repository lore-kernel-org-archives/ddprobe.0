Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D546C36A
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA41C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671288087;
	bh=PIfV7wjS5RCDp/deUeXJOp3I/i8X6O296+Y/UJwiD6Q=;
	h=To:Subject:From:Date:From;
	b=t9ni82cZbvHjRcYZwlw2HCAGzP2WdmQM6aR3F/LM1Cd7adcRn4eC7IOpNAO1jVm2+
	 TT4K4g5VDfG8EVGhfBoSvXoDdGPtcnKCh9baXbdR6DrgluNz3nSqLcqmXqZCMNR1h0
	 XrVQCzM4mBV13D1uJhs0DCsOKGE0EdFpLPMAvHiZdOtumyd5Ev8JZlz1HjLGfq5HtQ
	 VmTHR2k6yJiuCqxjSdC6CIcpHDu6F0Za+5rYgn7Qgy67Rr5ivkrOhEKyefFaq3wY1E
	 ybb8hK0HSrYuNoUOZI7EfVrarARZ3l/OvfVF8nI5XJEE99hgpMb1g+XCSCW+o28Kth
	 ba9o8xE1+/sJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63744C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128808740.23428.9426871699051846230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2746d3d5d7f15e03d650a2ea621ff6d79c773799cc2ae4775a655ef6a49203
Date: Sat, 17 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671288087
