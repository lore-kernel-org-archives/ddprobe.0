Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEA328EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85057C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670857287;
	bh=f+GI3aX8tf7OR751e+J61TeUxJneNLbNyH8+kpk90vQ=;
	h=To:Subject:From:Date:From;
	b=BM1o+xBx5q8opgoHuTwSIz2mNciiw9rscGubgjJJTDa6DAaXNXcfB5FUDEnJAk5ig
	 ZlsjU3mk8I6VYSZY4KNptaWQ0GrBxHpTBSpPnAw/GdrGfZGwhkzGXYH94fggEv9DQ/
	 K4agjV5fwrrzU2mACmW6UARVdbvdVFGWlnAxSYyz0vb6QwtsrqWXS7ePZAorJtJB5d
	 YVDxyc2MOWf9D3+x6fpNsBUbhKmS5NyXjr6j446uAc8pjd2TlO/9oEDG5eEVFszVfV
	 KLX3n49HNP9aBnf767OypKqApFrWU1TxTJCojMnPMRfE4YxuKek+NkWaLdxJE8hu9d
	 H7h4CP3706aKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689C5C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085728742.12399.13805019125393364128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e7a63b53651ac7ab5391d565609c2151060fca091fb05454325874f4c196293
Date: Mon, 12 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670857287
