Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF26E2F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C2EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661529052;
	bh=o9i1bzAxllzh1B78YbDHZxzOX6Bq8S2Nlh8IkeLNQN0=;
	h=To:Subject:From:Date:From;
	b=YT4yhNltyFbjqxigMzlZMAj+MP7+ivJDWh4grdtScMLq1mU3scAQoer6ZHb7gegig
	 0Mt4l8M07AW4gzxjpxEYTvTw3zTdy93mGoGsfftftpNX+9npH0DNJe/GEl7S52UMY2
	 k18G5Lb96vJTnuujpB6+ovCBfi9BhNDI8i6itZxDcizkiE4iaxDdFc8xs/YeVcZmkD
	 ikux2tWu2oQ7h3JZpMjfu8zh4wGTRaBKZvd4Timk6nX/C4kk8XsqqEDWxqLnS+p3+c
	 WyWgDLXGqJWI4vsy6XRIUSIU6Hzi5YFszGr51Yz3rk1KOsQC1CJZrg758cvKPyOoTH
	 Naei/lZMhkfTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B97ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152905235.9620.5657569453205995578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49140572edffc1d943f46989101d0b8eaebc7630b3980a3602b0d68acced5078
Date: Fri, 26 Aug 2022 15:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661529052
