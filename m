Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A06E5685
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D32CC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675792086;
	bh=FDEUDsR6xsLLOLdCkcDyNa6m0SNRKTXeZ+58ythZeK4=;
	h=To:Subject:From:Date:From;
	b=c4MQIvKe4lFPFmo5rzxzMaRGpRbU2HBr6zw5VGoNcgiv8zcmvsnIdtUq8k6KBhSC5
	 pfd2uzS6P7bA6Sng3cLo5PPfA372ElxAp6p9f0e6hc9lGwY/KhRNjZJIn9SADQD5Tw
	 9pX0cVY6zaTF3uZwqmW2Y4bPJsgQiVsVDyXIOTOo0VkeO0lIApxBiY+k5Jw4gBIQgz
	 ZIDbuAdw0cu3zxnUImiOJeBJGgQsoYaDQFD4cMuwJZ1YZGctI+p7CvgRf+787m8VKx
	 IbIgndUrS4H8z7So37rppVdU7Wf/IFycwsNZ9O04mXd3uTM9YEdYiARBygiKm+5YZb
	 spPILJnMx1hVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C200C636D3
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:48:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167579208616.8587.14958905646458684526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e535c5a26ffb59cab83e253d4a5339820c1657924bca315b0d481e83dc909cfe
Date: Tue, 07 Feb 2023 17:48:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675792086
