Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8BFEA1
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9006C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677721565;
	bh=ZqR0YYmvTDy0D0ukjC3ZHxtJF0ScaNY1b41mMbOBj08=;
	h=To:Subject:From:Date:From;
	b=ksEUgLKZhNWM5DJOMYr6DwwX5GDExLAM1UWgkisJb2MbJWh2bNtnodlU5a0KGNXh7
	 N1tjTa9TnKidQTXSaIre0px6E4YMqrGNI4ZHOKA5674MEQoasRpOzye8LAML9gzA5/
	 O8w/J1898KVfcGWOD2G6+RspVNm739GxqHLwPzZwmrbOY0UUUYVuqqeq3r4JYSc6xr
	 9EJtQf/93ggmjBk63pBVTI0TVrvaC7Hg1lR7mL45TzuLN9xDq7A2dMzWrwxze08zz1
	 P9JWIfYs4eCPkKnkz44DEf/9hu2UfIG/jhiC9y2DdfanFc/DqGAh4rWFLB29eS5X3T
	 261BdoWb+WYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF436C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772156577.21430.2855869536795353783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0033e73ede554b14d3d8230e21c830ad7662b7ffc30b53b9dc89b923a576b0fd
Date: Thu, 02 Mar 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677721565
