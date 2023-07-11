Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643A91DDF8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4A9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689096428;
	bh=KQ2B0jcwejLV9HAQ2Yg7YqyZ/+TikJFdwxWhItxVr+I=;
	h=To:Subject:From:Date:From;
	b=GUrycCg58Pwj+TJTH+MnKQpEdnpJDEauKr9jCWWUzMkTFsFFUSZ2fJ/QTe5M7aSc+
	 SPS7RR4QOznUz/YhbJ8JMaGLeyPiJLCjrvAXNjsFkHau2KdGqlDKNHsLuFNOt1Tvoi
	 FDKicIM9EBQb5ganr+JG1/3+15ulWBYxOVDvzP/9VpVc4xKxKef0VqqEfeexOhuGFr
	 KSitw3Zzbwb636GmKO0fhOEn7XJBsViffPBkvAIfcpEdO2tSPtUz83AM7BYYQwCHxI
	 EMjAgPg0uzARlMKEmgmqi1KuSaP5f8sYNl/PQmBT+hB5w1uv4g6ToqnzyfsOmB4rKx
	 iWv0WDcEPLOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DE4EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909642874.27494.1524736961005148503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9708c3b602ff7c834f43e14983eec7ed32c13c8373bb757e17674b596a9866a3
Date: Tue, 11 Jul 2023 17:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689096428
