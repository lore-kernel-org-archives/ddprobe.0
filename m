Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C95120F1
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB5FC433C9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688109188;
	bh=KF0xsrExwAwb06i6OyAy2KftwZ4TnwO9U61MnGXAwic=;
	h=To:Subject:From:Date:From;
	b=NrY+sjmqlvTtgLpUTfI+ZmXdXIA3xgfHwoEk7izpH2cGZP0XNOiYAGAscMh6ixhKB
	 mtuFhhXUo4hrtujzFUkqPQHczNzRCbbeOBL0dTa3R53GF/3maFfNpjmoQDbLlXVhpn
	 WkSCyp2IVNvkRedwzBIGdWRID7L1Hh1FQgrIQulvNQedt9HrToTut/vwzO8jqzPcke
	 niPw+bbw05p8mCgW4lYNWYbF/7YPgL08aP1HgKngpE2Ve6HeSyZXTsR14KkMdWBF2g
	 X35FVwnQp/6cv/zD9jmLb+WJDLuxKBZNGIMedrhucGgSEVmNhUiPWNd/bjGteb1RO8
	 gj6aQyfR8PEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A565BEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168810918867.6724.8863811207683322609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c563cddb41b6308ea9356a492754e7602952dc375b7db69b72cca2ae22280788
Date: Fri, 30 Jun 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688109188
