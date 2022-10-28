Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACF81C37
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A74C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666942254;
	bh=yi+pC53cDffrgAzfxvL/oVbHeZCTQqkAuKxOvXSPmk0=;
	h=To:Subject:From:Date:From;
	b=KVp0dikz6maCM392PCzC6041gX/QaDloWQn73KRRTgD7DrjzVtPAHhKb/QeTmpfiI
	 VhLInvvGZ00nRALeWJTgvVRwvVSIThpe5gCqVyRTdWxPnhFIUdS/CZUZF4EOWuEGsX
	 BWMHFJMQbEwlZfnK5zLS7iB+8JIOmBE8rETJx4qQsKSgsAW0fVV2N7z8G66zS5b7E5
	 DPflW2GIkB/oA01ZZgt7n1ouhQpxPF9bSKdIKviL6jSOZNRXgjTmCraj5hGhnzj153
	 fIwK5ZcA4hQXKLosy1bJHEVa7IF0h5QT6Ow4P4uokadtZ99kdkyFXWs88Dp5rigLlw
	 /ZBWTfglrFlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBFCFA3743
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694225432.18505.409233793677985819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f12efd78a8ab3edb70c5a43d4aa8c0a8fe782b57e2519a3a638d1815a2a1bb
Date: Fri, 28 Oct 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666942254
