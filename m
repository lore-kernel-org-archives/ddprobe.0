Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F633D61
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 06:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF3BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688971028;
	bh=Ye498WGsrC8f5s3IqyymwjT5mXCahzrhsfy4QONV96I=;
	h=To:Subject:From:Date:From;
	b=TVYKYlMawq/h0qvgK0K1Hq2S66GYvtCIcHrLM4RaH0mj4F4yt+FhaqS9txT5k0yjF
	 v0PoCdWRUzoqL5kltU8sYJn1UNSw9BegYSe9GjbGqHCUTQ6OcE8zkxosn1hlAMTE3X
	 vYjwBQINK3iM2s6g+QJnIx/j+aY8SddO98wPZwubeiICN75FhHm7+q4ynazG7MzRcY
	 vvbftSuD0ZJq/1DWBdLPay9r2GhP5GffX62YFqyvR1JMjVo0ouJSqbn+EaWWpbun4e
	 G/QErBsddAOERYY6fFlJPwqMbDgtf/+Qe5Ro5wMvaGSz1gYgPv5+mn1kVn2qv+CD6L
	 SFv8kRBP3LtFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD6EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168897102870.25373.13653548445267655268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1168a5e8c38b39707931c9510c8d9a148b1546f4094e8524128de7cf52e8972d
Date: Mon, 10 Jul 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688971028
