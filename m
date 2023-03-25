Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379247F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D828CC4339B
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679702465;
	bh=hkCrJUJmAKIpWZNMqUDm0zNwf10TpxsH3rATQWkaTao=;
	h=To:Subject:From:Date:From;
	b=LN1l0D9OodOto7Pe4EiOSZDCLlLIA1y97oKGnO76w31MFAUZyy9v4vjKnr42N4DRi
	 9SGLOMo+hcoy1t4POzcnxCBVwdpzVcy6XLwBf6haY8zQ3hTWTbpaJ16aEpjvCgstPN
	 OepIQmgC0qrKKul8CUVRzYUMQB7e+E5FzJPiafl63urJj/yAz7Mk/dNuQXNNwQLJi+
	 0jm6SFnvWLsFAjRDIho3I3wcih0ON2ASN/aYeaaB2r9ng2ctiuz9Qbxsb2yiKQJnmi
	 KW0BVJJiAkIk7bXAU3HLJB2eIaMteQh11JiVCni8G0h0wpDYASbWZa9AxBGgdk/P12
	 h4IczWUDHZPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB7BC76195
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970246575.23626.12859724366676191077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e01532ecd75f75e70b63d81409f75634ecfe8dee11effa2a7420a96c2f40e89
Date: Sat, 25 Mar 2023 00:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679702465
