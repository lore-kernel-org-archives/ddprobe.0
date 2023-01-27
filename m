Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214010F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8801C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674787985;
	bh=4tb7mB6MZ8iiCYt78kv6VgblKTSFL4sGDTrLVwvRMfs=;
	h=To:Subject:From:Date:From;
	b=A1Vga0vND0NeWIiPvC9RvQ1+lQuiE5YoNWuL02SdYx7mxxDBkPMy2fBN+I5jI09O6
	 8E5GdbrGK+ZJSCvlFNJgkaHVqR9WfxdbdSc78+K7n+e0ZUu0sfSk8lZWi0iHD5ocNd
	 KAyz4rF4EpxCdD6PhNJCr1TAlMz1oUn6+vAGgzxl5JofYVMv1wRdjycjPxaR3/Nrkd
	 hFnGMTJM5CuurE4ddcp2PN69TOehKUDE/1cRvTi9uc/ICuuDNyXaQPnr4WXAn/Pfe2
	 ZVcLFrw5opn286B1GZ6oNXgVh13LAOGGTRk/JgpL/Oi/S2zd0efyKmz9LU0OYBIUE3
	 89HAgAPdkxifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE323C61DB3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478798577.12760.5077392486358011732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b8e7f8419e26ee4e3687bc871ce2308800242d589e6a0ba9c8e9d1b942062d
Date: Fri, 27 Jan 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674787985
