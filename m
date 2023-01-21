Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5C8386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 03:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4090C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 03:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674271925;
	bh=knmQQueUxX5QPDpmQ0722EWom8AWLS0qvPTPMNAxFRk=;
	h=To:Subject:From:Date:From;
	b=j4Dn7Ia44v3LdoF1K6JgJhkqEwwHVnsIl90iboRQTUa3bNCtXmbiTP6RXKv4fJi9x
	 ZzU+tf5iWcJuCqxC6NAHmwndCpz1UE9dJMl5FAYDl5PpeM6eCABKVR0xZm3pQMOThQ
	 7BnBup8jruIehjEl8v8GkauHa5qF8UXRbLgR2fDmTCujFK4dEB1KGADHMJ3Twuqp8b
	 ulGagBEb0MQ4lGFL35RvDUsjTUTEJ78qQ5zX5NnMLU6FTxuD5bKW4XcuYZcB0j1l7Q
	 oTwHeXeHZdQAh2ZD/4STdKb/TawIu0DdNOjE3+E2PbQni8zAlFSB3y0Q2+b+2+rtO5
	 VmCRSwcfpS43w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3ADC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 03:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167427192572.21059.2301213382537812718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd33703ceaf8a2aabad9d675fa3cdf994d72d22f67f2b7ce8a4a39fe85709a7b
Date: Sat, 21 Jan 2023 03:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674271925
