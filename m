Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E66F395
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF95AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692251588;
	bh=ZM8KYchNwqt+tWrEKjALFWxHF9oTX8FRnhWwaDiMbO8=;
	h=To:Subject:From:Date:From;
	b=VL5UsDTo3xZlIJ1IU1b2ioHgkrscH7WoTFfvoFt6pb0Qtq06uhFH6JYtQDm7+OpTg
	 9FTKahWKNHxFauUZXY/NwZER8AoTo8mUsBsuKxkzBcQNjLI3FdkiGFOuHyzFa194f7
	 sPk3pETUXr74+rshikGzL86OQacuBwKu2QsJoPXdZQ1tLmULuu9qE9Fr7QaYk8NXls
	 cmtWxK2RY4kxPUIi2rVJrc3cJRaL6XnV6h2uSOcJR0iqb/u2EiDt4wDUf2YgBiAgyS
	 USZBCQxq67AGEIF+VbmIqtSbKgkALmInTtjkviiPtvhEP8rPV/zwnWvrthgHtJabJ/
	 Z2n+M6fiZ5a2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A8C27C7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225158869.20264.13709954664195974048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf44803321ada8d4d13228784fb52350a05758f0afc47ec676686faaa6a4724
Date: Thu, 17 Aug 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692251588
