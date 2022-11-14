Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75F510F2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DEFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668392454;
	bh=PpNwqvIUc0Ql9dvebxiZzXoPPYXbUP054Y4oAAmJs5I=;
	h=To:Subject:From:Date:From;
	b=ZOX4sHrHAm1MBoEvZaDVajY6CCJJp0HOzHVOnpeq5WmSo6K8SW36YVQUr8xEg3z39
	 ZWEQCo3jRZWx8yPjupwIOkZmoPVj0jVQv/3harGiyNBXwH+w0JvOqqpGivxNEhLHjL
	 SI86WJBTaJKEHI2Y7LgqW9GO9z+eiZFITEF539phBCCJU95YpGomVCiZS1aY55vL4T
	 rlxRAdfcVYCrNBxvD5qGeoNMeCCwurwqxWEl4IyN67fSbbDDSZLhKhk+Gcr/c9QHJL
	 8PAHu2/SoUDt8NrjES3UOzir8QFTwmP3tL/JJzYkghvoP7v7s/rHIAKcDvdz1yJFGm
	 yNM1RdXVbr5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA52C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166839245431.10402.12461016956061526465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425c15b3b01c6fb64adb5daa161130869dbba0af844e8aabdda7abe36f079dad
Date: Mon, 14 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668392454
