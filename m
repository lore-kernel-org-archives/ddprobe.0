Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF27B15B1
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B1F9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672482687;
	bh=4SWxMdsh3q6nIxbwcpYB01Rd7zJriFO9MpwiGgaVJMM=;
	h=To:Subject:From:Date:From;
	b=XRthTSzeHfh9gKF/lJ07tRf2ByI06u1MPdMJ4kxMMgdV4VtiNwfIxLtZGvxTVs7tD
	 HcFZyJe4qKGG1LM1ckv/9oJYEREeOrIVVQucQW7ZVhPrUy2VxTmh1wq1tYVSl+eJdN
	 gINkpl+q4Feq2j+wUznaBbJaqfh6DwaM+A4o8WsGY1CKqNLOINfaQCPSjNq0+IvWlb
	 /szeej+oxfIhNBthafpY8i/LgJj3WMSFGEOSJGG3qcMB+mQsZozS1ImwamVFtcQ02I
	 cX0Xra/NlQzWTFo5xfZm3TzY1z6Q8K/XBOBEdMvutabuoPypa32bEpBLVlV2L9ME7Z
	 3GQB0tb0TO7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7155EC3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248268743.4700.7200015891124192147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a263c30f05350bd373cb63e02e053012076261340b759f4cb661e32f415f4009
Date: Sat, 31 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672482687
