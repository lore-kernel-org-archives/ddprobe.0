Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364CF63B3
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 13:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3911C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691760188;
	bh=XYPwYllyiKl4AVVebiRnCVwyxKyBNZKGGa6X1gsfhi8=;
	h=To:Subject:From:Date:From;
	b=WQNk3b8mTDK03fVd8gRE/BtbSLPJ2W2mMlHVz8U7tEG+MNkWjeiFiSOw/1YhYex2t
	 YKMXHkaPJiFVV3YEnGLAjz8KE6xuvhGcsj/n42SAAqmdrXa68g2jSdubiJqswaNaVh
	 /B3lB2jW1LUiwFli6HvSS0L+fQfqU/Xvv4sPLiWVzbYeGgvTGkeZpk2xfY7GuTiSpn
	 59kYxXC52IYDq3sDlUcxujX/rNbBqNIVrI/a3+05QwoHo7ih9XIDQ82fkUrb7y6cq+
	 s97eNqEmBbdXPdiFioiB0xqr1nTMrt8zFC+fQEMMrMQoJQqqfrasLXpjRrDgIv2Ylc
	 NZOB8E0X1r7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A820BC0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 13:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176018868.18334.18260419945971971463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55de1b83035c6ef751fa24a3f7e1d3c80c5ec999a04fdf911ba2ff96a01756fd
Date: Fri, 11 Aug 2023 13:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691760188
