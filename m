Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14D11386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 841ABC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670743887;
	bh=GBdgbCsX/+A2ZqpU/X2rsSNqKVvLtLIU4Rj7lvnspCE=;
	h=To:Subject:From:Date:From;
	b=ulcYSQmr7mFMR5NqwmY/5XwRI4KAaUMFAwPTK5uJe+NHbAdZx7x4ro26kb5JZEx+H
	 M7zhApcRTMRvN/Tj56ax2duJGCpx1R5lcKa9wY2+lssTFQRqbhGZukfvEyTbxbcz3W
	 PHXoytqivAnXVQs62zOp8zDyq0Bt2L6yfdn9CBjktEQyGExjPWBZLVxCZ3vH6+qm/c
	 PoYe0/CYCMSn7GAhriKYuRhKh3w2Qjhk3dMawmrZFgJXCYO8EXraA8tgyYXO3Xp2e5
	 V49QfAmrc1MYIVRKtKmYr86QpShgB+nvajoDcjHWvAvoDv6HuOzBkfwpKIFOqz8fMf
	 kaYKX5mnVG52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6ADC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074388740.24797.17949787124787603634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20624118bbe9d7f75344bea3a35e27e5c4286c17014cc45b0ecfba8193fe6c71
Date: Sun, 11 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670743887
