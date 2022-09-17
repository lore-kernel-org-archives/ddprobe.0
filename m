Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF02C7C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCA1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663425053;
	bh=0VeSiyKSt55dtDGoX//bqt1zEQHHKjh5ILqks0MHPKs=;
	h=To:Subject:From:Date:From;
	b=X6XAS5HR6da3rT6VtRc5m1u49hWYRztK9Fl2lOOisIXxCClrO159C6Uti54fDK4FH
	 gkSdNYfIFgk+MCYp+jVogEtRpJvOzZZRyt1fdycqJCAm5sDdmDXSd85GTOC16btWAv
	 j3rgisQ2mK07FD1ZZl7uvNfGz61IPzdJ9KNAR9X0AOhP0MpECWA5fZ7vprmD6CaQUY
	 xBicI1X6JXYj+M+QeYw5ULTsdWOlkJp9TYSVaB2c2p1nXIwhbNWXHcwxuF6tZco2j4
	 n1CCtiSkIJI4DOGXZLXOH5f83RRr7xDf9NgQCWhzg6bKbV6p9Qib9OQ4/3GJx2Ja7N
	 CMZTZzKw+AcbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D3AECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342505333.18069.4182902760747836093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b59a134c06ba6f74b7ea1a03fec528742e05168c0b2e7b9f1e151a9c5f5186
Date: Sat, 17 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663425053
