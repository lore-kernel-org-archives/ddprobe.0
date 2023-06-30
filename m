Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761A9EBE
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11A1C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688085188;
	bh=NtxXl/lu9T/wSl/q6u4kCv12Y8swCi2QjiswaBDjTSU=;
	h=To:Subject:From:Date:From;
	b=GVKsG3yjrHNqToHJym6cgj7zyodfXYbBeLBhn5+AAj20OErKD5XTAjnvn1spztWvZ
	 IAiPNLeQlj7PUKNCaoiFvO6m7gQW9MDjXX04j2Vli0BUIVzMziKYZ2iBTfNEe9IfHv
	 i0ubWen7Sx/FqKcBS7U+uG49GCN1AMkt/sCPid0Gw0ZFpcdHN5vSCNPmOjSGIM7uzi
	 iOQR/F1RdeRKCrj6Cv0iyevs228qGuQsU0io+fx8p7h4HFJZrllLe1VagVqJjg43Vj
	 DdRj8JS9c1DtYRssPw18wOHl2kTA7CQVYAEUBI1yfY4iMZ12cCO08+Dcgx93fpIKVM
	 ZNFZfluyuzcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16A7EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808518878.23783.6720359240739526365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bafdd1c7f68cc4d44f6f503d5f54f0372ccd5ab096576701941eac58f086809
Date: Fri, 30 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688085188
