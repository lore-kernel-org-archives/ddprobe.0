Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5817E
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B17CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140453;
	bh=SKzEdc9LCBFd/cBYlgA3lVMFVa31WIMXRn7t5opktCs=;
	h=To:Subject:From:Date:From;
	b=Kw2026CegoCCf32uw+ydcluyZcaRMVI4I2nyeZA6L7JHqFFMBmB7I2LnGL3xLtu8r
	 b0T0iVAJFKuVKNekaBHEIkYEko4SVR1T73zaVjVsUbH76tzDYCjE4XD3kYj1WqzsiC
	 Yabv4/fN0tWBq9xmKlsVvX7GZXxYg4YfVq5/O5BiIsD01OYQELF72h5mHTig7SYO1X
	 HMtAR/cs4PVuhXwkgiNkQH2cSp1SOSFVlykMKjxmS72bXlyXptXNUhO73BfBPUhn+c
	 daAAzeoZXtdigzdTxIOhPia6+47rHvOs8M2s0H5RNkxeSg9lzP24tYIiwp2QW/83h7
	 AeiPZHFxEzSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDC1ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166214045338.28863.14475827176681777449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4668d18bfd1377fb28a1c0f049ee8095ab195f205289b5645f6658f85e5f068e
Date: Fri, 02 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662140453
