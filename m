Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E905C2F29
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDBBC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674168087;
	bh=TzReCiNqdbKKUV/u200vH72ScIntwkUJG6oRPEyNVQw=;
	h=To:Subject:From:Date:From;
	b=SqHxgTTYceVVWjMDab+f/+iN7S7ffwflSolTD1sTzWBb67shxqmMjaA+NI6IJ6tTm
	 RMB0aNnCrwFivJyUx8kiftOFbOXkbCOBsf91ZUb5/rz+stRl9ioVa+qtgw9ZIqt59U
	 fAJed3i9l1OsH6/GzwCmSYCogjkpZ0WHzUAOFIvIszFKkdxLk3gtg8KcdmP/zdnp0R
	 1Ly2WZFAxN082iygnf8++DkMq8QzbZigTsmOkBpG9xkn8hTzPHPy0OSMHC7RABJWVD
	 jNFZBlXsaWhpC2bmCRZ0C25isxhqFYnXD9g2nNeH3TX9GM64gOJS6826yoCqiyuvCW
	 dML2kkeZ9YcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BFCC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167416808739.17887.10529996318485477887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a963fdf5d33d9070fb0bc17e4907c80c87b160cb02c8330be1a11d45ea0e05a
Date: Thu, 19 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674168087
