Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E432D15B1
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1Ts+Urj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A63C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700616496;
	bh=YbbyADyI+KqcKS0IPZIPtsfyZPGoazIGPOb/I5VgRlw=;
	h=To:Subject:From:Date:From;
	b=u1Ts+UrjG7y6MwnZZg8eEWLRbZgDgc3Huvc8+tkgQjpCmR4df6ZIglTCiN+4tWhTP
	 5GPPlhjBmdSWV56pXz1XbROVBkSmePbBnfwkEQPTBYUS3VPFseB/jivmMiFqzWBq4j
	 iTQ7avKvk0FP/Twgy73OaMRTrEdxmAoymWdbrpJGIBjb+pwLXCbrYJ6pulH4QucXAy
	 uSNncuVaDHnZOq1S3hpql4zrJMupLGMVHlHm9iSNyS/4YtHBPZupZpezlBwlweO4mx
	 iiZj0WpkMq9yNeaV61qS1frLOWYbAOTdiD+lUYvR7Vg5mfAdaQUSAr1HGi7ig2Eiu5
	 IKUiwJSHNb1rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67982C61D85
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170061649641.21162.13970913194225525776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c2eb362eb652bf12015fa6b9cee4e052b3d02617ec0275aacb0eb6cda95825
Date: Wed, 22 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700616496
