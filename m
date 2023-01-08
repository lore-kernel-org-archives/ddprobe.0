Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DCD15A1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6560C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673140287;
	bh=Ts/4vOF3kjuK/wHCHBm1w/1waJ9EJr+7S37ZW9JsPwU=;
	h=To:Subject:From:Date:From;
	b=hwRtBY9Man9Y0y8izOii3dueV6Iga6DcJC7DexHbCHhN5xN9nT4DWMmH3nqzTd5b1
	 BOqRt2CyUeKWzfGk43QJc5UCAiXHJg4loXqzzbhdw8v3XrIj1xgjW/jEe25l4I8gjq
	 KEsLmxCAYdlDNW5gXVEr8ZgHtovMmXKkasoDOny0DzKzFY3uOfhp8dAJAVQTA5ooGd
	 DOUyNlsPGrgVcKh+y3ne5dB0bY3FeyDbQQoeRC482J72FfvH0mMdF7rSzrwhVcZlIB
	 jW7lZzbaKa3Fe1AYfVxw0o6Qs8XU05vxyqX28WSDgVAv+r2oQJKOomRHhVv65pSHCT
	 ISJ6FwR3uvDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B4CC46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314028744.17606.13450221093339838382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b2c015e95e25a502b56107497c670953c0f53e8f5822cd21d4ef7582a60761
Date: Sun, 08 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673140287
