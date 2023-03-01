Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39863EBC
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD363C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677651965;
	bh=tZM6n3NL00YMcblZPV/06lfDcNUjbWpWDDJ33F5A8G8=;
	h=To:Subject:From:Date:From;
	b=NSWgcfVEhYIJFGD2v1EatH7NNjko+GJJNLEfPGwplk+E1dwq6iXc0eU3q8JFojrHA
	 4CUO/AxSVhghM+Hm7nQQydHZc6f+Mx6xpV25XenTlfXESl0O8Dhn94liryxFjHp4d3
	 A03MT3+w3eSNvCeKl8cKNjxhLjmnneRivgqquO9Vn8kDXLpYJxCshrxVHnGuUqAVQj
	 dDpj3w+oJ9WRec8CkKaWblBGG10AzH8WPNL3iOlmLePcWyNzo51r/H8SgYPIIxgKND
	 wBIPHRyAIIwJmgVdvTyTyvSvduEA4aViVD8ko4p5/r7b+LOJzgiwhy3yWw9ZNROliY
	 YXWSgcrRbxHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CD9C64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167765196572.9633.9702305887981424759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfefae8d12a37d897bcf8933edf2841e4f4ed271d6fad8122eea6e951005670a
Date: Wed, 01 Mar 2023 06:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677651965
