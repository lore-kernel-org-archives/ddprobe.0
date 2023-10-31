Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2318328EB
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpUmhbUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5B6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698758296;
	bh=EtwwfrWXNip8fYh1Si389cwUEwbWV18GJVNoVqqO8lg=;
	h=To:Subject:From:Date:From;
	b=YpUmhbUKiPWRjjMgAyp5R6xXVS+Xx0gR684wk3Wfcbhdl0Cm8u3DDbbV5kQmND1Mk
	 qUIK6jb2Us+OSBbEneEt5GMYqgS4vnpvEv1bsTfctPomf04Mu58fjPL/wgslyILZDj
	 r7eb37GSq56d2qAlDBwrX2+ah4024i4PI3pORrBZ1Yg3p6cm2E+5jj3hrhKxztJVBZ
	 HKbgffuJRbgU+MkBTFdgOfzVYvfMPnRERYsnV90ZC3lmmf1i3hHBxUL0400dCSp7uJ
	 cKycl9A3FQHxAFLpNfqrSrGvB4e8/UTCWDlEavGgi7t0MnS9JpxQs2T9vqWB7J3duW
	 /1T7CQCprLWTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E9C6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169875829642.31266.4048948281566808428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c9783f100fb2ee8e7251bca8e85018aafa3ef35d77a44ecc56e89daf620d23
Date: Tue, 31 Oct 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698758296
