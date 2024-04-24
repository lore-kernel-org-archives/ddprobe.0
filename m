Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5508715B107
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713971483; cv=none; b=JU2beTcGtu5v0StaciT8c+OVBNNFtUYOeldtKcOLo/WBc0ob6o7KQ688m8NI46wK0kXgqmwttCvzhjc4OFpdf8W/qYyu+rblZAOhbwIO/shGoOPw9K7CveTK4Gc31Uk0aoMCEp8UApU1x1yfAhKjXZtv2WxcggJ9XA5kFmJy4fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713971483; c=relaxed/simple;
	bh=fA17wJvnkUgwibbrl4dklRdAVKdK/NOqhp1pYDKgcRk=;
	h=To:Subject:From:Message-Id:Date; b=uAA0rOTR+HCsvGFa6ncEY/XfXVC5yGvJOcuarJuuQzPV5gppM58ORD7uf3hC7eJBeBvBe3yxd9SCBuCpjYDUHS1dH6hzh/UNiDrnSPcbDEvHKqeKaHqY2FUgEdemIzxuG+plEQZtox/CJoCRiMJg+JQ8b+UHMDITi5j4RMfqHAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcL6cq8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcL6cq8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE00EC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713971483;
	bh=fA17wJvnkUgwibbrl4dklRdAVKdK/NOqhp1pYDKgcRk=;
	h=To:Subject:From:Date:From;
	b=HcL6cq8OZ+nqcVYgFD0380aAwkLB9ibOB7a+AZVZJeVGlrrM3CoeN8lfrp5Q54jHh
	 2763dhE9Sb8HMeuelwEGWmGhtYEQwubx01Y2pU62XrnvQS7QvTJAfJwyBr/l+APNp1
	 gOb5ZqPhKHu/mnh7f3AmNV6bZmzvlGeBTYdMk+dAbXXbIDaGwO/Kqe7CCfIBLykBob
	 aJjXdmhA/oM4ey8fWvXt59onxQp3W3ZbloaKWj/hVzzAvttEnvP1kP8LvZVkMS4kkf
	 19d11AXntWEqDBKnrW45ul1/reru9uKSM0CN3cioJneLdQUhCZ8c+p++L6cdHVAwFd
	 lAE6rZSbpIeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D04C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 15:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397148287.30273.14888774632394787316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8faf772f7f211b514cf92eb46a5394ce1a1e8e3274bab9ac82a1c279ec84f1e4
Date: Wed, 24 Apr 2024 15:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713971482
