Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84550807
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30CBDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679904726;
	bh=cTxIvkRY27RiB/E4D4/h/rZp2zOTaatNEi5YGuXZGO8=;
	h=To:Subject:From:Date:From;
	b=ctI2gcBGwnDOV3qRv4QL+EnqiXBZhVSUdiQfcRCwbz3Gqw5Q4Le4dkZLhwI0RA4PJ
	 JhFJ9YbyC3IQf0tSkIIkYg4n+VMPg0lbag4froT0zZCNm5XPpATXHHfwxoQMSq/ZcA
	 eiHIWOYm5FMtaaqrUpLCb/reHfqjl3cWJzEFvosnTDESBJyAYJFhkArZkuH8kSdLYh
	 R7epQH8y27rlPeFueHU+NJAVoCBfvgtWp2eLLtfKH5C+tUL4BAPRsukbtzEYSJkBuc
	 istC8vCAXbIA2q1jzTWUhiAZBwmYKiEOtiTzgJTsVuHhOTK+cy5BEpbbGBMx/q6vqB
	 hVdM7H/MkMeWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B133C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 08:12:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990472603.1698.1040237283113853654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efc69bdedbca804f7b1ba2785bc73cae0e3846edc3ac27b2f67b932af15adc5
Date: Mon, 27 Mar 2023 08:12:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679904726
