Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDE9A35
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C015C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666732253;
	bh=Nm5R5naV05jTQOcvxRHusqlsBHwHBCSzfwltvPF01mU=;
	h=To:Subject:From:Date:From;
	b=Nd3+mpgdVXEqXJTU6isVculcTF2M1NmDeOBo5+azopCfc36fQakoH60ExRMWydX8d
	 2NxkLPxvZKDEfW/mlDd7515s1tM2P8W2nsnNE+69UHzc1AtoG7rEKhWjgAD0PStjTU
	 LHgTa1EAkMFpNpegRv/dvfrg0hZJ12gumxKdxmaBkwaBQcycEGT1meRWUThhFKKnJY
	 e64dn+Y5p1C9RwFRIbwuTxLUepzQqb7MnFfF/7DCPQx6fwkVgPVs7/kYDGDjndYOa0
	 6dgsKQD61k+T3Je0SrL3l8jV9EL13mVc6/4ZxJajp+wwv6ADTJo0qugcNAYjRDbvK0
	 hQkWWU1vIpWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DC1FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673225333.7311.9413652276406212684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112c54716ca6187783789e76c9c9cbe5cd282d31a34c6bd17e7051ace35a58a8
Date: Tue, 25 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666732253
