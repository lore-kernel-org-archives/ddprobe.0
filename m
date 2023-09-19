Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C521F509
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C62C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695097508;
	bh=y8lCq4t1wKvZbpQcPxGjuOtLxqi/oVixrfDwxg5Tfic=;
	h=To:Subject:From:Date:From;
	b=ZjoWTAz4UYN5UjjxxjjJUZ4aLoRTi2CjJBSdCxOtgqTxwwUU1cTaDl+DPKfynO0z+
	 ZcLC7hz3UEm7Zf/tH+dro/ipMYGW/vaeetHfrd9hXReCGTl+ifHTUcf+hMYg5wHYrM
	 lHgKAvwzS25Ly6phHPoUFYmJDM+n+Q/gOD4RJThEqyb30HAFp3oEqLWrpYKHGp0SNZ
	 mDujPKi+ZgGHvexa6kzysJpqTGz60T550HSSq37SPy1mrVLvTtf2vIRai02bkBi+F2
	 QCGuBNL6ooZgrNSpcr56/08b6cBHKXPsOHnMxbYGzsknf18lsBtOv7/rhP2McahtQi
	 3F5UWbS/DVkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7698CD3437
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 04:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169509750867.2352.11416236378441239744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b83608bf916b821a3cf0a8b7000f455f86fab8582a3ef5c3a5c0fe0d0724b7
Date: Tue, 19 Sep 2023 04:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695097508
