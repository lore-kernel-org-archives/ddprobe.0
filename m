Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E47E3D62
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DC2C433CA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686926948;
	bh=F3dA8aCdS12IZt6hqsJzHgVmMCT8TlmRUBz4YJF4h+8=;
	h=To:Subject:From:Date:From;
	b=FqNkAoA5v3j58lHQkQgA6hjB6XKyF4BicTHJmgG/cWkp3otHE3UVOw1FBA7kzRRD3
	 yjj5b+SBjXQgtrVNAKkFhMnf6yNZJ2zSPJWYByoxkmQWuT2KGWQq9zTNgZFfPthguA
	 277vSffLQ+U5VExmm35E2C3Y3xSzAVYOJeuQ1mvl/lAkxcrKaDE8XOvc/VmCm4T9HH
	 nPpJjaXk1sfhfnIfuqlA12Qi2/JHaVrPO8o7BT0ypKsJzd04efknFg9C1ETT0a+kMB
	 S36tNiZqMjAZ6xtoQcb/VIdhhQ8YcfrSkhmNJJItPTlX/bHn7UdF8DgqCJmBpkijQ5
	 itCgjpDyMw1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F4EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 14:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692694868.26403.17930233102993154384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6170543e725f0868ee7f22869d85e36151d4951855def0de10656c4397577a
Date: Fri, 16 Jun 2023 14:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686926948
