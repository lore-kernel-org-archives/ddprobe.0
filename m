Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D5C63A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DDDC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665741053;
	bh=ieKWmmH89S1dxsBoEE2l9/74aS25Cgw8T9EQNj+pmQo=;
	h=To:Subject:From:Date:From;
	b=brCZ4dTXQz+ODahB4jggMv7utSo1AX3kw2EFFVAaScrekA5uyu4uu16pvl8uMwRld
	 kS3AC4+3lqgsHEntINagPDHO031BRvvkpo+QlWS0CRipAnY8Qbla3lsbHDtpNmZB79
	 I71kSmxini8x+q8YsBlu6yAVllFjuv1W/kkzRQbAWC4CZJPK71sKQEwjBZn6OEppc0
	 KCgM+UXmmthzJh6SRTvg46/b1G2OkZ3oyBl3HA9YaYDbSllY09rScYo1Ox0oMVBYas
	 OU0ikz+1vAn9CvAXtWYbi0gEopGNco7Xif2E8ZMijyTAj3zWmHcn9HbWrgVie2DH2+
	 OhYhNAPPM0ztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61952C43219
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574105338.32688.9829136040970859764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257b81950249f33564cd26849eb258fa58a5e9b731d86e088d5f7fc7b1e1851e
Date: Fri, 14 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665741053
