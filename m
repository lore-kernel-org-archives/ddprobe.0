Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E5D2F56
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742E5C4347C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670082654;
	bh=mC+fgbtxTb8IGt2kaMX/kESw/nrgb3K++3ov5DyKTc8=;
	h=To:Subject:From:Date:From;
	b=WB863HeiFnGZOYRPUWMfD8OLevAc5oizrGelfqTUmrYWXNJG/1LF2jZLy2Kxbpz36
	 VDrd8AtfkAyG1QhjHknPOSXQYC4IhbMvPO0Y1G27sOaNcJu3rT8OX3cOkcOeGPbbUU
	 P6eH2/w/LIXPh1yLTY8vn2WkL0aZNVk2+Rt7OfhcZT6dbPOX/CG8XPg80HAOcBVsMN
	 oCHIgE5Ggd06kRW+hymlAAQkQdihpQzq3XYaXUitQLRkGAOurwLxlblU0hCoWsrUxM
	 m9HqFenTpSGWrhvDHQYMSk5aX5zByVT/HNyhN3KHqFDhjCvpjwtZDtcbLbTX3YgDZt
	 m1US1NKcgMSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7A3C47088
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008265432.23137.67344199097578791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fa1113c008b4bdde236e4e6a8ab333d8694efe19b107bc503a910e88a21168
Date: Sat, 03 Dec 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670082654
