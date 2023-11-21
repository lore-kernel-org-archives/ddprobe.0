Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070AB3E47A
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q66+6aXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC48C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700572696;
	bh=xILmTiyDU4Yfcjx6S/0dnyCcUJvIoOkpJYTJU/XWdXM=;
	h=To:Subject:From:Date:From;
	b=Q66+6aXuaf9mcLpwNIyrY79zMxfq/wGoS1/IteRc4ZOEEbLK0l4lRtjFUEgWyrF6E
	 VripZRld+oD9oQZ5DV0RFuxjnbMVVZpLDVrsMXxIkw2AhRAMGiHIwBoj70QR5DLkii
	 mK5+ndRdHvmJ4Yb/C8rpEf3BtUKuMPOyipgxjJQd+DsxrN3dL02Ag0HyxWeiGwhnYK
	 4sSRiyjP1lSo3OldTNkpAAdqtmzMF6PiWtxUFw5JxQsVO5MGzzsKf/0WY6vkVO2sYb
	 DlVCovz+MWGq3hK5qDkQagYuqDGb2JdFwmCYCzvDPm4q73Jvmsn8Gg0BkxQTbjABv3
	 WJI/V7HOOhrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D629C61D94
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170057269637.6179.17640807079204710634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9780902cdd61668bc9349cc0bc45186c6cebe047555c0988344665a683bfd5f
Date: Tue, 21 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700572696
