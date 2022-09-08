Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8216610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A6DC433B5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662674453;
	bh=3HkTXL1K96vEZiQqHwzIza2CYU4pnMIs9eBfl132ugg=;
	h=To:Subject:From:Date:From;
	b=BnssatLDMp3INDQL4fj+8UMexFPI+rLB1hKLGNgbBwWH2fUxew/x9eGupRvsppMyL
	 q7ZNL5N0JH8LcR3GGHbdup5jdynIOKYXsVERdbUIqTsjILlZxrx7tG86RlUWEVyCHd
	 OmFv+V7o5ihfFFYkDLDgwxyKqe2153nccNSQHkA6lxp7BKglnDFDCh86fFYKnj+TDC
	 PWDfCc+TBFUGXrQR8+8jt6hALcbLsbRVVhqmzJtShO+Sqo3TMXDOrHRhEWlUnBgT5H
	 C44fdI7aHqW6HTKZBrCUJEzMWGOBsSBKQU9eIy0awZgm28nJX4RiSMC+e2thNYiJxs
	 Ix4gfy0uTlN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58ECAC6FA8A
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267445335.26485.5175037105539471245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de07aec1e966b57e7ce70fe0d632e6a7bd1a0716c829cd6fdbcf49f813eb810d
Date: Thu, 08 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662674453
