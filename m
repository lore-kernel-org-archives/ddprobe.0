Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303C0817
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B21C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674456725;
	bh=LTa7fMIKgmmWRkxy5Hc7qMiXrPdajiFP00uTEtyyesw=;
	h=To:Subject:From:Date:From;
	b=jQthszQZYruutsdpvmx3v9MKqVdnjZUDdbpkbeJaO/HalIafwS8xLxHAEzIuYNSZw
	 2gqzUpRLZ76N2Ci+3Su3vu2S07EgJvFeQX3otr5M55PERBTs2j+p8ZSRkW76ztajWj
	 bcX0Y30a4S9ESxVsr8AZRfTdRAMkTGbTwPPY079rLKL37/tSjhDcKzc9pQC1ANZdds
	 qVnmYbeogQ3HeCkC3mBBobhnQnHtX44sM3vkfckkwWSeT6oHfZZ3/aHwMPWn4EuXql
	 FkptIkRKB+o6ElHUI+QDX+N7NJlOKfvt6CEP8optvgvqu+TDRYwKLc04kAMcVTHavs
	 D9Z09C4DUjuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE305C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167445672576.32217.16066839646517962301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abeacf2a0bf658814c4b0425c6ac770d110d374e1b6f7a596ffaa769a2f0c84b
Date: Mon, 23 Jan 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674456725
