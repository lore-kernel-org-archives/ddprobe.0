Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECFE654
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tieiiFcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AEAC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698656296;
	bh=ROtaoNTAKM8BT/s3EJbo0b0bGbprdv1SHtee2cZmXyQ=;
	h=To:Subject:From:Date:From;
	b=tieiiFcN3t0t9tnOA8nTrwGWZo2UMVQbiHNddE/7GwNstYtzRT5H7qzNS6ndPM0Xf
	 O5LKMF//lBbeyGjDT4+UOA3KRE3iua/YhrHcC9vq3yqh8ksG38G55McD6kHv46Iypi
	 lsBgWWCiTwVDtA8J5Pa8U44A0cHXs6BrDoAr28pqgRdOnxr2cnCsG3uHV1196RmYOt
	 g4at8kT3qqlXdIr2tcYdEu5pSEJZNPLd7JRke9W0+6avssRIMfDWuryTAEXAEQUOkC
	 mjogcOOL6fvMMSWdErTNcey3qox6B2inD64LTN8niuVPDNOqyIp3KjYt3Zw2YFdSxv
	 eNkJPQUElPIjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA79C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865629644.22073.2538468100900018249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee7b43ebbd96c31288b37a6317544475c5fa2d55fd2871f13ce0bea07d68f7d
Date: Mon, 30 Oct 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698656296
