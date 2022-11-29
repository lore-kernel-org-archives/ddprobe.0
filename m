Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AA4811
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD87C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669721454;
	bh=XqElHQ7StKOCekvUaN2QhcweXuLHT9LKdwzKPcjdj10=;
	h=To:Subject:From:Date:From;
	b=BMnY7QMdEN2ny1dSXfz6pQfu8j+pbyceS+YN1rLOU0rLnTihKJY1UMEtGUITrVEht
	 39S0GGvAkZC4n1FZnwaXPonk7MHBwWiySebWmURpWjlUcHvSUv2tlsile04afK2WSz
	 /fPkBMmTHFj1FQbHD2lGAoVBsAMwTvfXyJ5NHP7w+7mIX3GREi8H1XHyYTIWtQmqJm
	 i7kr2JGcQ3SqMOhxfMZjIBDp4BoZUvRWFi8lc57H0rdVdJMt9J93yxPXYAm10Q9kvF
	 WipPHTYbWg7pzJOgoetXL35RoK4UCaEic/Xh5IW1TjV/0ZTajrTPlHmeCDWkI2WdK0
	 IulwUmyRIROsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B95C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972145434.11239.10006183870182986189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18195f2da91efbb4a86e69776152a5731a8a96ce6129b7394a85518b751615d9
Date: Tue, 29 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669721454
