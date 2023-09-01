Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC1020E1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 16:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E399DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693586048;
	bh=j2ZK+LNhyiiQ88Wd8JF5qnYCL6VaAZSD+OtM1+Tj/7o=;
	h=To:Subject:From:Date:From;
	b=lf2f4tIsVcKrsqPUmfMdQg4EGK0ib/EKq97CeyxNzW+6E/Y/ExWiXGAnNw+xWB0Mk
	 a9qcBw1yOUJYNd6eDZsPctxDNwML+g64p27eri1V9HjoEpn4lmJAY7llZMz+ibx8hP
	 PK71BGdB4PykO5Q65RCJ077mjpAjqN/5yAi5DpxlLM2c0MErZfSyi9yaYPqqwduIkH
	 94iof5A5vAbZynWP1TK8M0ryQRMzGVx3ydaGsXV1by3qIgenUjKmQzoOzatNragQ2Q
	 ZqRNH+0yeupqJO9dDVe6XIMRLeDvgGpa2LSmKyyqwBnFaLi+klJ7wsq7J2LYYxWyyG
	 kp1o9S84ipp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BD7CA0FE4
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 16:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169358604878.14576.5816855906495340007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c3c328ff3de7c6cbe3cc5e5be710ef0a109e87c294a0d8cbe35b51844f62f2
Date: Fri, 01 Sep 2023 16:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693586048
