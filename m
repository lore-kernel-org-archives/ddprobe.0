Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3087F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780BAC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672709487;
	bh=lYKCOvn46Azeb0HNO0yak0ZtqGHyqoquQ1u3D33dxUY=;
	h=To:Subject:From:Date:From;
	b=HJXznoDvwV4pcCCvlANdbOd7j1K6RxJjFdtQtNR6lte/p3NjChZDLf+ktmHz77koz
	 o1yKWNvGG5VESn8XYmS9KAyh2fxg0taLCU/aJj9FgVqGhTg0EMso0LUk7WAdJwwhJK
	 otjKSYTPPM0S9l1bboQ+jqVEAQW/UF+s+1/18P2t3C/e4NGuyEJnYBH40R5FODKo+G
	 qPdjMyJ0E2niu1aadLl2VclhO0QF871S1JO5DYuskxAQxuj7lnGjld4Y/TPrHqWtzS
	 RHkiHr7+oYvUKhQI7z0GT7a2u+tGmIssa8N5ufuvMks44IoEe/VPpJ/GluVt4YJC+4
	 gam+k64dLco2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD91C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270948737.22796.12630998866228929730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d816be075f71665f8b8af9f4dd39ada3790b8d45abdcd3a01ce797babaf4f02
Date: Tue, 03 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672709487
