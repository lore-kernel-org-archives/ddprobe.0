Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04543405F0
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVNerX9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81575C433C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700761096;
	bh=FBRXZbcrwLsYpva+oaS/j+FhfM3Y5nVou08SqcofaS4=;
	h=To:Subject:From:Date:From;
	b=DVNerX9i9aRmJdPub5rvJ6TfgTAQJMSgZtjosTvS2IV177Z+v3MI4rochEMQVJe1n
	 aGohRJK/7U4TJ2CXc8DoSrTNzJAZjWq7SVGFYsx/1RihgjD9SVgMOCmZn0IbXjzbdC
	 si7Npx8CstyH3bOJDzREBBR/u3Cqm8zH6O5+4wKwmw9NtE3d5WkccyaaDyGjqmDe9J
	 /P/4viXGGOVhm38YbR5xXlN5hMOnpH57r4ZoLLfaL9TdJynzeCdBQs0BnUiQbNxe73
	 hgF9cbOG4QqFMSM5bQxay1LO2tps/vUXSaSRKDOTSVB9o9QgiBcvkyAxXduXwM4Omx
	 o033hzQqua7GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A17CC61D97
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170076109642.15445.13931863597068844021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5319b5da4eeb0e259a5cfb79b46b399fcf7b4dabcddbed60cf10e2f53274385c
Date: Thu, 23 Nov 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700761096
