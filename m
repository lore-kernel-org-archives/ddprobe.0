Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F2BDF54
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 20:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBA7C433C9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 20:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689972129;
	bh=gjvelI9vJd60rnzl4CMq9B0IbSM7WA7gYtsTqhUcLfw=;
	h=To:Subject:From:Date:From;
	b=EgkkLbTQ86DYm2RFdvcPnjB+Fd7sshGlJGjfGHM+3xvatCE6ulXx2AMoUJR2mnc7M
	 IwL0gn3lqgLwTbz09hJJkXZX+bnx28wQEcbPP9wvXlgPs+HE5tdRrc5XD9rGGf2DEZ
	 g7jWp0I992MIFFjyix7nqnrmgXy2UKxMksPBmH2g3pEqHIEDjsgEUVMTHGF193nsAl
	 bb12avyAkcC78Y5HzsHir4Oe13XNv0z5Jmmbh025qw4//KzRMOqq39YN8eWejIZp7U
	 VUpi+0HTtHOL73IlT+ci91B0uj9gnf3yZt82t7zfvGfnSHQfuoxlvPfs4NZJkWhBKe
	 CVvQbY3onlEyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B8DC001DE
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 20:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168997212874.28653.8365228554313150778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2326b18e5aaae6a2b9a95bf7cf0c623dbba0b7f2928db24586e0c6088e6202
Date: Fri, 21 Jul 2023 20:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689972128
