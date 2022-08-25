Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C1F1841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD98C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661439052;
	bh=x3qpM/Z9/O97UAHUTyAv7Whko8wRztdcwEascr3/9QM=;
	h=To:Subject:From:Date:From;
	b=FwDG6s8iZnRNfl0cJ6FM5cJJSDA0MCs9Av3RXoUrOF77Zzc+Ywty2PYSXgKa5t6iC
	 Yurap2ONoRm8ZtC5Ifkxy4JZPvqkxIpCvvm5abQQyKytbWZKBuA7mm31PI5veK/+5G
	 PYRakzxczk+uWqg4Z9IIox1N9ZD+yR6TZXDDvSlv8tv5moQfT2nkBgXGXkzEa7+mFd
	 +VU12fbw9XB5TOzTgytMkU4xeOYOeEWwpVTs9XhNMwojNxX/4bCQqghCM7QCXG4KMy
	 2m5TRlAOGubltawAKXgEqSIGT45aNLey6Mb/WJxAGT0ij8hrEbAAr3GfhDDaXH7GsR
	 sI8i0HdRM4deA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0AFC64990
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143905236.22955.10853734609777248800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71ef894aaa20031c298a1c3d387f4f20dac4e7ffbbf01e587a4bc18f5ffc384
Date: Thu, 25 Aug 2022 14:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661439052
