Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E895D256A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 891DBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673960487;
	bh=vWVvd4DGLuD3BKRQMLu0VppbEPC0OH7yS2lPdgC2By0=;
	h=To:Subject:From:Date:From;
	b=b6dxCv9W3qO/qHmQtpRhyuv/ODJdzSiHhVs0jYrriE9pkwLBmIVHJ0orUZL9WB+7z
	 ApbL6ZC7+FpEUtNQcvvevrWqNjS6vhbsVA5VmjkR3pe4vfUgGWJOhOjASJDDisL0dv
	 dgpuJ7/ez2+G2voMUvgxTjg6zdgsIe9i37W3GD2V8gT/DD4hpTGGB0ryc0itDzfV4A
	 tvk9GAk9baOP9y5SHPcoFcmpgsxh/PWakI6bg3UbeaCBTOJXt3ogLX/66rSuCPXxm5
	 /QgsRcLZOHv2B56TD0Lt1p+zZYypDPl+AsqgpJCp8HfOk/liw8Qzqb95KuwZbasnla
	 Q+Gw9dF8v/1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F78FC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396048744.22595.17933722617617906898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e182f1420ba321038e6629ac41623d37b14dd3aabd02b2d38526f367151223
Date: Tue, 17 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673960487
