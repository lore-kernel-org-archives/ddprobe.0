Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1896ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B54CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672176687;
	bh=mv2LoW5aoOf5emwcOWe67u4YcpYsbJwLpU8JIiedNJw=;
	h=To:Subject:From:Date:From;
	b=Ob3geH+38TrxcyB/45npgUtX4C7c58D20U5V9gxvPC384EYJXHv5ZHS7InzdJuGj9
	 tjs1Udz9kRUItYZAirhXq01nvgbQbyjHRXMAB2xWnEgxkCOoJovbPMTRlMxAsb9kfd
	 Q4941JIwJFMtHntXrUG4gWdQgNdmV+q/mgSShI8jpU4Yhr2Q9j3oIxig3qtUpeL7vm
	 wEpwz+f/FyduauoCSy4IZY0ZUtEkgIEXKjJfWI2/8bc3u7aU7SGabN8QC50XUWK9G3
	 NWyuJdTCf0djKXQyy2NdAohOSiywl1tc4gk9Hy6LaY43tPviRURXuL2muYS1sXbYN7
	 VpGqCQC8MlARQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6063DC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217668738.16459.2675786512044069776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8936c437aadb0502f7188079c5c5867db432a4e77873aec4ccbd77aec5a3b0
Date: Tue, 27 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672176687
