Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557BB6ADB
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 22:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2540C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 22:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680906666;
	bh=8O+8XYWmSfOcp3IU8dJLHatw8vPThpMol7lmJDArBf8=;
	h=To:Subject:From:Date:From;
	b=b/h+iWT3XMPTjnZaawfQB0UNtUVwL0B+rdnt+TuJvflutz5Xf7MpkXXOPW80vhE5a
	 4E8vks0/WBBskff0MNtedMR4XnDsq1hlw3On7IEEEjAt3/Hn4zxizJkDuDeAKxuMKF
	 4ICHLgoEIZFh/awBNFUbkch+k4xBXoVQUz9gdKNnVXiFgJE5koQe7Ibe5ZrqZE5KTh
	 15yY2Xf8Yr3U99XUaC43mQ2Zr5Yd1TxldTFJOYTZdUxfwSiAPU9RKhaVNuhawI+6JT
	 fNqLjl7nzWtEGap0DRRz415kZoGA5zVsN4/25x9eCfopS82ZDZTTB7BJ4sfyoyL9bb
	 djHC7iUW+b0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B1BC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 22:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168090666582.620.15840902284791564779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89fd0f4b1f19ac69e9019aad04c0ad883fc658e1f00403b94965b3de33a5716c
Date: Fri, 07 Apr 2023 22:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680906665
