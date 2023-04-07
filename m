Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA5F6ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3B8C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680882606;
	bh=Ok80m+djs0bD09yzAfch6oUNXoua3o/scmIugTb7x08=;
	h=To:Subject:From:Date:From;
	b=SRDu0TIhbQVIbz1T9NoJuFsO4LX4vCc0dw5DNBwspBZdrnrveK1fgaeWWmrHDHNUv
	 H9clxxXQQ/YLvD76VFD7fyNPKcSa3LVhHW0o5t/VPNMSItUMsh/fPBD+G2P5JvQSsH
	 DOwuRfra4ZMAI3AV2XNWBePUMgJvwJW/bQRqbPLSB1TeuzZdG6I6/BaeBTI7xRFoXi
	 9w2gaisg5g0altcGi6wo4u90WUedjewTggTN1mHYvoa3jwBdaDKNnXyzJY0Sz4iqxx
	 OHwyt3GhSFj7RxNy+CCWcaChOK7gW43rjvxTXYXa05vLWp/cwg9CHAUClCObEzz2D9
	 3zKcRw+x8B3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD823C6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 15:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168088260583.16431.1631009944818399753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da03f0aa900f94cca5420dfa1c03d67385ffc91c1c06a3a9e8aefab4e61361d
Date: Fri, 07 Apr 2023 15:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680882605
