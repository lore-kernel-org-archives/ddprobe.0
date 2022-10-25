Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DF47B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7054DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666714853;
	bh=pl+sRz/Dz8ADA1IUv903Rrl/Vnvp/F47FF6HcEsvluM=;
	h=To:Subject:From:Date:From;
	b=brcwNEbYdlL+MiMaFP+HzOUSMkXP4hsq4tHupRPbggXDb5UlUTAfMJ2qtLX/h0IXn
	 MBFmsKSWsZ/RRWnaN/X/NDud/mksnbB+Mlod96CxIx15wjZOkcpYCz81NRsDtOcKdt
	 5y0TYiLW8TwOEXKB3UKgZ7tutqNUAKrF0/9EhBsFQ5Ng1laZRer+Zv1d+9+ZigdZ9X
	 ZTCoHJmMBAZ11WhJVdSNcNmD0zGQuBlvp/rK+FBoxcsf+HZqz+YTZm6gzkOoTZ9MFa
	 XpLiiUBipiyIKl9i/vskfGgvXut7sD6GvtkjF3Q8gK3U7tVo8mDYANAco8nI4bX/8r
	 HtJrsDiYV+lbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE4C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671485335.31589.15832146138229768296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e515adf42eb2780ea46833db8395bcc77b41c4366822484ac492e1445e43ab1
Date: Tue, 25 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666714853
