Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4777C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AB2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681469525;
	bh=rzhM7srs1nkvDe4fSVK6qBGvX1MYVJSZk0UMGsfJddA=;
	h=To:Subject:From:Date:From;
	b=OZjWlofQeqZPWP0bpugkzHpPXCMYi2NoTy36WzrptYcicgJtEuXAs2+9EForZpYHJ
	 pQEWMyq9odGI69C0iuG9i6Fd3q0kLoh388Z4aVo/RzAknIMd5HWkwOPaqXe0Tl95QH
	 Y7SBPCdB0DgE1NtqIpqjOs3gaZZhmnDwUAF9THFk4GdWwsOuBK/DdbqJf6JBlXXdkH
	 cALILubkHo9/uvn0P0JXEf0MSOImi0oQ5JJGRbUrSBzEk+U6i/VG3VrQcwaQiAWsXA
	 rGKbb/wiyGwsdC9PKP9YLpyKMf9OI5RRWYPzJ6yujVGtnWxGH1x3sh66Nd+NQaEspt
	 CQVYAWnNUh+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDAAC77B6F
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168146952577.732.9572540368611243617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c610c2de4c68515de6cdb0566b33f3f433e310fdb40754a2e5df7ccd4efb26
Date: Fri, 14 Apr 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681469525
