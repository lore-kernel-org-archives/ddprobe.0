Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8778317F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 292ACC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675746966;
	bh=6vOx2+V48UiK+v/qL5E5s4BETDZ2iXNEUGSbuo/6gF0=;
	h=To:Subject:From:Date:From;
	b=ZXuHqwR3X0dlx5xuXMelULDt6GVCbGga5wyqjxudADs3wFJ9vmCHcW9SAbDuCSsUe
	 nskN4EJXn3WdtWLyh412DrIfq9Dl6wRW+fRwPNWCaohL6WteHfOP7xfM/jFHHvsUjQ
	 kRe2jRt5BsxwqPsKUstWKRizBukUR3TOgyi44+49xt/sja0czRu8d0QkxdINf8Jrj/
	 byrQKKrkG6lPgTmqGU8QVmM5kH+rMURvlKAHg7Vlen2t0Sn348DtVcb+xDa+FEL4EB
	 v24gITc27btjvoPwbGlkKBdyRlZpCqVKBtPi9HaHF5qq6myu/gyaJXKu82HAo2xzaq
	 z5alG1eR72VFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B084C636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:16:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574696597.16417.7091839932947420741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5214e391a667e428a9ea63ca8ddb6d5c430f400bfcf9aa1e41cae447b7c200c0
Date: Tue, 07 Feb 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675746965
