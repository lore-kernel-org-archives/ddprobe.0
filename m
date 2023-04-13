Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B007E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045B0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681367826;
	bh=bRtycRZiqEK9AEeMU284TrnVTv21fKAs9gN6gZPQRbY=;
	h=To:Subject:From:Date:From;
	b=gDgjvf3KpkgGV+QSShDPmEed7WZrNWUnTlZlMsaYnm1EHF/EZ5LiiDf+Jb7blWWWu
	 as8EfdjMdO9YPNhNys0CaH0puSlKFFXJOb8MW776Y370/qzy0Kx6RcaY1EpFvhDc9y
	 Fpo83dAyq3yg2kR5Yb9BGvZKzelDHLQKNS39oDZwsM4EukKCon+PZjA+zegVYyfwmR
	 SuXoLxyf5U4gBqVEuwWaRyyYziUPWRwM/S/Duu9Yt5Ap0hCZlOy+2XdmhLpaczqV/K
	 Esi+gF55aROV5O/f7gU2NVrsDs1fiCArnA34+Koqq48WOvN/R2EiPqY5ywR479brCi
	 omdNSYHBa9Yiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49E1C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136782585.13058.4822032132977470337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950e9c7c105a66026ebd9ab4831f5577881393f4c9dda19245a8eb789cfd32e5
Date: Thu, 13 Apr 2023 06:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681367825
