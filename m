Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA8527C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 623EFC433B5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664810453;
	bh=n7CDIJTo4MQG71fAkzJZNt1IWtFGuk7ZOIoAtVSGNTc=;
	h=To:Subject:From:Date:From;
	b=Zgq6hkYUh8L/R+MAaVLeLIyxq7qoDICqOtNdJLSFE+BjZmNSy8D0MqVg3ZNJelTIG
	 RS6ULqmUeiJulfRpoJjWQKSiFHXRU77iEcacmNzEBkINQS/zFz4Wb6NyWqWXuqKF6F
	 owdTM53R01sDnnROkniea+lrAkumnut7r+vq7+EjtPA6gzW+VOTDpTZaCXocQjmCfX
	 kSX24pV05h//bV/+j/1JBH5GBTh/VQ378cLSCBG2xE9g7y9/HVLcQN08XxxnQ5JgW8
	 apqUlO7FTN4RFvQ3jBJ8qwtva0/l5IAtowBve/xfVmQCIoQJijDbunK8uE5sPTFQyk
	 0MNKVbM0V+/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E995C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481045331.11634.12217127897332673329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b9b512e69cef987900eadb26222c927cb09b5ac08d48cb17ee1a31cea21d94
Date: Mon, 03 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664810453
