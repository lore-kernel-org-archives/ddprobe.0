Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4985023A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F90C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674803585;
	bh=Pk2/wkAYIpDGj1h4SJKhOW2E8fmkF4Akec2zEqoEmw0=;
	h=To:Subject:From:Date:From;
	b=NpDdCcB3bPMLj0IE3OkcDae8Lt5AfdRQcxuU0+Q9CYoKkzRWWEMdpppWsxbXtLhWk
	 VNBJm5/aCsH48z2LC4c5Zu+ywchJHq2Qto+JPJfkC/KLUZM6H0pdRQORU1owSugD9x
	 zPeCsWF1CM+Z81NWSh1PWoTVMBI3g5h1HHYsK+8ubRYGdZcpUNiuDrsw6NpVJYW4uZ
	 YtJIcGxeWj6/vpXYy65A5msVEBXEq9giM06IRopcEbro82BhycqRl6T/TOGq0knwyK
	 p2iI146ABpong1UhcUgFe0I1FQKdF44zqw8eeTTW6zGHDLqij4q89ki/vfgE5mt7AW
	 7Ewmi1QCGqDcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB7FC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480358577.28118.13822358314929816842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ef30b950ed8fdb6c6d9c70bb5cf5b1f3f0782d7f02ac67a80b764a1157041f
Date: Fri, 27 Jan 2023 07:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674803585
