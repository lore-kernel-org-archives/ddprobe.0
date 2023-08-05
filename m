Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678D1A947
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65CEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691245388;
	bh=muIpvrLHr/I+jNGrXi0q5DEbzQ8e+BF8XVddOO9im9I=;
	h=To:Subject:From:Date:From;
	b=XaSBpFXO9ig6jJZh7jzf3UFciHMQy89tIgWcywJQlsogSrhAn2rwAur8dD+PCOGOr
	 BiP3XsaP3pfhQK6DqZrdksYqflhiV62lFPpWmo81w2FAyV6DZ9f86gJniJDHIJMUmv
	 Rr18N0ioeLjL64HwtOftfHsyg3HFY/yrsuzjV9ikxFeRgqm7A5wf/uvx0APA5fYDsb
	 MAsk/l8OmsuW3oMm3/VI0lRcc4m/dm3uRDedFLsFJRLV27HGXBXgIKUc9/PV33byIH
	 E1CyHs3kqL6OwNjkZDRci3Fr3iwDwKTaBWwrDajcVgqRS1oFV1JxlWxW8CzyV1K7bC
	 s+woak2sHQNBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48B9C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 14:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169124538867.8021.17660250003466469859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac92fbd7d9cbf4abc318b8669436801da27d6a1fe07cb78990def951623e2e55
Date: Sat, 05 Aug 2023 14:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691245388
