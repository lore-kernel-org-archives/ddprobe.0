Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33D633C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E793C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668436254;
	bh=Z2rY1f+6wZfLmfHAhX33eIKZimZ0a44JdKANnswmsZs=;
	h=To:Subject:From:Date:From;
	b=utWUL/q0jW+lZrFGoAhUsm0JmaraYUWhlhQptir2SRDE6eO/+yqpNmaOi7QfXEOSU
	 VXueA1VqWGVoeok9cNzDD+kdnIScs4eYqe28kPvowQUI25hvNSF6MmWcpVbahnhOac
	 gYTxnml1f7eK/Id6o+Ii4TmMQEVo/Anv8H2Bp/rn9PqE9u9axXxzt5Bt0gm3ekRDRw
	 kMIXgZfukjifk3ASLm4CBTK5u7IePBtIFkfzij46/1EGAEVTecGHKt446RJRgKBtSp
	 aSqWpBB+c24NMiY4HbaIHnHlQeM6seqkZ8kPmKglFQ8HqpsqEiVtLFlR4dKSqMGMjO
	 Mf3AAZZiRddBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C40C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843625433.31515.10361598001822492445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e034ca4ca17e79adc6bed427499f5a6d36cb84a2d74d617ae782a4bb6f1203f
Date: Mon, 14 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668436254
