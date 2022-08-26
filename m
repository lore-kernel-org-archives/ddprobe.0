Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03871851
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 692EFC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661497252;
	bh=NZbFP8lzgb6eSxGUVzpEXpnHf89y8jGTrku7mQjJIok=;
	h=To:Subject:From:Date:From;
	b=Gbi2BfCwvBxt2r6JJxFXpJhBXj2ZHNitr+gqsUaYdfZ9FVyf1ZBM+N3rDoAS9PHrh
	 T/Vysad85NtaVkjEqKtMUXl0Sl7Gf3I/+7MT/RzwYE3383aCvEX+yRjF/3+EZCCBeG
	 s2ehoIVMy0uU5QXmSZMIlueEycG8vOyfa1cSUXsnE4pxs8nW7r24CWKtck1vd90gsL
	 Pei4C2pjtwTWqpgaSb/s22cX0p3r2J4eb/fC/MOcW8hIJLGsfOkL8x3wdUHry6AzL6
	 Gdf8YVxOHZjZieCjaC8BVnZtgpfyXXSfDu1OwmbgFPjZP9QIJNm4ReVBU7GNxnQ2i2
	 uyMG7pZfz1WBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F872ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149725231.13973.15434934468694934164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc865d308fe6e3b56cbe600cec38baf9873fb3299e64b90e53a1713c6fba0759
Date: Fri, 26 Aug 2022 07:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661497252
