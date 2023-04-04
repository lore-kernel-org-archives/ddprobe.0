Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B447648
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D8BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680589025;
	bh=FNtURnYgyu9gen5vXHyDVZkyAfKxqQhstZhoGoLr6tg=;
	h=To:Subject:From:Date:From;
	b=utt9N3Jnjv5t7C0z7Q3vIU7DiHESKAKXiHqRSZxMkKzmqBCi912PB/w1vSIDqeaPY
	 Cg1Flfly4iYUicK7ZbIQprzsf3PmJyrO1hHVdA6f+AU3LSsitrVOH1hnFrX5i07igh
	 pc2V17uK72y8hB8MxYj67+4qBrRXS2ybXC+5VAKVla7jgsYn27fpLGMF2AVlOZ7lTh
	 8W6rZ4TT3jt+HZk56P9Iyr7YRifK5mcpMH4l4L4TTZvPa0Ax98GzaA+3hnbYBwm70n
	 NDvFUx2Iqyq1zppDfX87ZXJidLlX8v1bZ6DtaU/0UsjLWYL1/+5w7U56DjhOJLETYj
	 LggmbRJpFksgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D1FC7618D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168058902580.4374.4752535265255449197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97332c8933bf9a06d41d09e92ceb0786fb7b2f267d6685035b75310b66b43f0
Date: Tue, 04 Apr 2023 06:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680589025
