Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3B033DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F035C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663076453;
	bh=vw1oYuUumK3AxEXDftIQA5enE2J4LOi0UEDTH7tUDnY=;
	h=To:Subject:From:Date:From;
	b=obH2Sav9NeSFIxwLY9rUpCTpMo/24TF+Q0Z3Z8hZuB5K1m1narY151LgtVK6CPQXa
	 JWPmcohPMbWFD/oNSrlVHsDuqnMs5PLVbyyTPMxC4nLxjEZve8pNLRfTVZ5QCBShfj
	 S7MU2BfFYnJtGeH9qBH9bpX6XsvryuJDRFfOEAmrjPFONRZkGOIqZ3msbzvyyP+WDW
	 1V59DJj0JGAmeAWKCFiZDRfUvy1YCpQTyiC+e+L5q12NZL1KBH0eWV9w2yhKrYiZCc
	 yQDcJHV4oepeg5jTzrxYYdWXWpiQYOMmM+m5t5Ch8Kj3k2BW03ELyN5L6w8gLSicMa
	 ofu1S+j4d1XIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5134AC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307645332.30726.550150737547985938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73d3e40aa7f738aeb02745476a83a7f73b37cbafdf9d3488b731975da09ff32
Date: Tue, 13 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663076453
