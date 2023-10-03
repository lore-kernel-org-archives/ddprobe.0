Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AD2364
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40B0C433C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696302368;
	bh=3KD6j7d+KFkVBsq2STimcbBN6HTQpVVFczv/DJotO3o=;
	h=To:Subject:From:Date:From;
	b=H7Sh4Uhdm5QGtgtQSnWvoL7+Yvi+m9EIyxTxiFxiB/4t7KXGg3DoiqNfznu++5HUB
	 efglx15kBJmNktSUUD0fbhr/9g+/3+4khTu0ok5s1QZ6os5ENkIpsu34zoXJiuRrAn
	 C6PKEnybjg2SxJeAw8pHbI9YMYI8HtVS+Sh9p3c9Pp4DrQO3smxgruSXjO6HcLVe8P
	 vXFN7ocU0pXMLnl7llC8U5qAgak9bZUtpdJR1VrQg5iWv7Ya5aFcNbDhd5DZ08z6KA
	 vrlSVTCVc6gjuKK29fQkCk/XsT2sm4Wv1yaVVwFm1v5y+k0VLp2qi6JDzOuio+KQWD
	 DssTMzdGvgvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68F5E776F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169630236873.10985.12943618993142288155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba081e160b8fdca3811a3d519afd2029b7b85eb76e4f3d46adaaab68affa497
Date: Tue, 03 Oct 2023 03:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696302368
