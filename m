Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4BC7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682432165;
	bh=RjZiJ+TcrR4tGgR/tjyzIkzSdH8/ABglU9Juo3GmAFc=;
	h=To:Subject:From:Date:From;
	b=hpzYtFlWkqN1GVqaPAgrYzAHLXcOo3IhlJ7BaM3nz2NKx/DPqRLcEfpA59eQHuaCC
	 9f2xaN/mWbQKIYxuz+sPJBHnpFEPuJ78It1h8wAnDcwBikkQaDK9qRjwoqOmXiBJhI
	 E9Qw5JVu3VpXXNeEmwu2o9WqjDymthkPqhhb5dDJsknIFy5hnuFTLhrUFEtRlSIccY
	 ZVPV33bG/vM5eiB9BGPqmXE9MmJa7yEMp+ZQG7v/mY5bfyfRyzjsGSXjiadDRq6Cwq
	 gDxKJq9iY0KvDhlOtaD3wRhMyG31P1g7RvsKsVf8UNpzeq9acN1S64x5ZLuBtiobSE
	 4YoV3RZLSI6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA184C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 14:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243216575.4036.3914681895770611874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcac277e46584a222521f41aefc98c2b69f41b91322d757862b02754186e0d4
Date: Tue, 25 Apr 2023 14:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682432165
