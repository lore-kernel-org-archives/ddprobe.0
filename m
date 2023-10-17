Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6203041746
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVeUeNON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF353C433CA
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697543228;
	bh=C4WTWVZVn590wxIcIgYAZoT5+vp62xjJu1FYVAynURw=;
	h=To:Subject:From:Date:From;
	b=cVeUeNONKSEoKRzUpVPkqfGhLK6rpmz1psrVWqfr2UCt1GMxTQARNACsHJV1QQWkN
	 BrIEz/quuH/04ZUult2mxDxg06inkoJ75+E8PM7t4pVueH0AGQDtKoTYSBI+DT4IUu
	 GLQ8vgRMzy+8SYdw0WaNjhZ3Ov8wvRWMtjkvjYt4A5MXYNimLo4Tne67Nq4JwioL3e
	 SvaEH4SSiqtBrtYoX5LT3SGFdG20H0MMlCcJPGhnkRHt386Euki3J31QXbXjYboXjJ
	 XqsEjbLZclA1pvlnN2IuzAjN6RpeIQMsxzJLJ28VNO3+SbNGX00PrxhwbfDx4APqdz
	 fndhXaPsk5Amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA48CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169754322870.23817.17469268823758111527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b692d7f20a8b4f3eb8dac66b4691966519c6966fa3b761ecb5290fd5e3e248d
Date: Tue, 17 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697543228
