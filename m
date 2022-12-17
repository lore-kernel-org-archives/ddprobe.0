Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A7723D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9414FC433F0
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671290487;
	bh=ozBgUnAqku70ByR6y7jNVADAYhDSMnVBQ9359XAZQ00=;
	h=To:Subject:From:Date:From;
	b=SKjwosmXhv0Yc7Vo2freMziBLVt7z16tVHPNLN8qcB0mfGQNlxVTCILqrFXLcxl8b
	 j7WSfVJ4toaydpJjCcXoAkEglrci4uO4WVRNXf1NN0FDFjgPVQjbV8VlSlZie8asGG
	 j2hZafhq4ZoxGUjH4cw1IuH5riBZrLXEVawvYhcwFcIpE1fnNzU5YtrctV2bBIqshh
	 pEgUyBHm51T6TUY4vwvHs4rD6Her+wMscCipSBSjKIXXTwu6MnE5YftqSMd2+o2Zqb
	 w654odYqirw0zpMoLxzgMfZQdSnF7rTfO71/D9oUGeZ7z8kuzjPbCIH7G85MTWZcS/
	 RCFzsehnPyaNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77BA5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129048747.19995.16394390432601378243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c7625bc74c33aaa53c68702a163d54c629d0461e7fbedac7bfa72c62c6337d
Date: Sat, 17 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671290487
