Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538B517F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3A52C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674212526;
	bh=BG7oH2e80w0jgiEq9IXZpGPw/YAK6L9MIAsCx5cY7wQ=;
	h=To:Subject:From:Date:From;
	b=dYdfGHpVzABXL1MIRvORRhAeg4MlyDnaUOnjv8684Rt/KxTBuiW6FR8fQMNpZD/49
	 mFruauxeKASodugI8YFUtOvQE5xGotHbVN27L0VEScL4FL/iLoWR+nxs3HLamszyBP
	 cdTTnziSNAHczJYuirg7bAzWi3FxtPaQH6IjlnjqxnYX7Qcn6mIPNVSV4a4/YkSdyi
	 2B/TfFVeoaJZ0NW8fD2UNt2530Re3nFoyhxcjKE8T2YqVNMZBMXPhgJjvnqt4MwkF/
	 q0VdBJdSvScHBJ/jqSH+EMxEETaOjCGBLUfIflmNcjgmC6Xv/gj/lhqpJ54hFyyODg
	 JoG75o8fcb9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D453CC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421252585.3036.16380207117546127753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235edcf26453bb8cb0143f4dc625f7fc0d0c50c3c37377a5ecbc4692f09346b0
Date: Fri, 20 Jan 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674212525
