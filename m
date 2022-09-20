Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CC910E5
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77818C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663645253;
	bh=A1dvKXB7FTxuNpLYa+5yCc14PxERmkTrQF/r1femOvM=;
	h=To:Subject:From:Date:From;
	b=GCVlvMyqQ7uj2KDxYU+7rwNuK7DB0P2uqAGyDH3L5wTTfFsy3I/p++7iTihApHVxz
	 ChmCVlEu6iUd6ENRXfhoFZlfjQwHiirwRcc3F+/BOliXSfdQ4vnxN5VXtjo074CXTI
	 fFJkLhlAfjPtjJNqDoVwBVW1J2Yr4OnWd9rTydhPB8RlVt/0ahxf6F1sgDDl0X1E93
	 QvLKOvvjwjBne9T0lH7cj3pe0KBGs7b0uXOXp77KHjELSx6EVEaHG48auUrsBgWuOR
	 8JN7mlpbCHxwL/LisP6CzeJP11S90iovhg3bw+0kDs/44utq15nehGI8eixZpPBg3O
	 2CCYxc6dnMTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C57ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364525336.27688.7293551487534505754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984bff6e96bc3a114ef17b77fbc87b98dd75602635d3c773c7d9523c661ea6e0
Date: Tue, 20 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663645253
