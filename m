Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC6579C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CFF2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670956887;
	bh=Sn3gcqxsxI1+4f/GJNAKWFBJDYyDshejHPHF4Jp85qI=;
	h=To:Subject:From:Date:From;
	b=pl39ZW9wI16NiX++oYLNV4cFLfZtjPoCnBBL9MzVwEGUMPCdBhP6vpACitgLddY4o
	 eKraliSUKWZEKakPk/pis9szvsWdEaTJSRTbDHcW21Qlzyy0wveUjVWqsMQ10k+DRJ
	 bzu8ASg02yqQsO6hKcArdcs2IDxoY7QPrAWCoQ+GzP6T6GOn7gh30ZGYBnawi3HFVh
	 MXFdEAKWs4WOL6Z4HPSOmsUoRQEdFmD/ubaNK2dbRo5vVK4c0KGH8N7//S2p5LDKSM
	 lfXtUioM8vIQv8OAeo1jwwnjOg+a37kP0k6BEgkRAfYbJQ/EdfyHTQwmwZVJOEzd20
	 3cImi+hqAHA+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7543DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095688746.12612.678384069334965901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8f5e4616a3d12735bc2f44d610a90b5ae6683507b73fc27030c9d56aa69c8d
Date: Tue, 13 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670956887
