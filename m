Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C123D15A3
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78756C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674088887;
	bh=nZAwA+wqJrXxAFflT3u1nFMkJ0zAqQmgASt5a8PlBSA=;
	h=To:Subject:From:Date:From;
	b=lsVhGXufknZ25GAqmE+emW0NgGGQSlviuvg+wJFmmHDPhZ3sOscVnxT69zgw2vLcJ
	 AvhiUStopXk2FpiQ+hayaexYqur/7WUAGNGUUJ0nKNsmQMJfThM+oHODrTMGgItFES
	 BjsxMQNuBeXgrHS0rJleIrdQZPl/qoEp0y9DVLnVqfr6kuCNmUlS1yahYzlFTzMk1c
	 iuc5Pe7X/jq7Y3IOKVcXoeQQKK/FyzM2mxZ2WWTP2F4S+/OsFTqEi8uEi24ACgRD9b
	 DRtG6XgU4oCnd4NRIAz84lcE/kUUOiRJUb1LXa5QhICMpWsV+FY+u0msXVk0suamtq
	 dm0dSZsvorqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4D4C677F1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408888737.23713.4311291180056570024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab59220ec5a9ab9bd3328b021780e3b107e30419f98a439a302de214fb1afec
Date: Thu, 19 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674088887
