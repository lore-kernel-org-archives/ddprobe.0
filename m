Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A82807
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8644C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679902925;
	bh=3iQ+Zxtkv57ypvCvjtdXqfnXKPd/lTCCkhWaoCvrxPw=;
	h=To:Subject:From:Date:From;
	b=i+oGMRf/KR70K8b+8n9ox6OKwpwhh+HY/Zh4r8tkNUuE7S0xB2aUZxs3SLhF13GLb
	 B+kjJZJ/aDFf2HuHvKlshhESJ5MXtf6cVKSH0GyXRw553k5SN55BX8ZD0dColLOPWP
	 l08R7/0IgixW6Q2GDc3t0e47ei+9sJSM8WPAk1EvQ+0CRrb3vS535RYvvAJNqRizpd
	 ReRrgSlIIl/PR0zn+OpLBwR0sdNtcIDq1pf9YrqVxyty2+GesYDxm19gRtDP5jSPqX
	 DEHUrMnKHowb8GFeGcBKI6qHkjdrrDjVg4XedBV7ofmZgQ9himit8EtgEoSU/Wjtfr
	 it7TJvId5eUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD647C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990292576.10797.4559259844329683541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44909171b4d32bcd473776af7cfd98261096e6fdb827faba5f226a0a45a772a9
Date: Mon, 27 Mar 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679902925
