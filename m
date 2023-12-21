Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB936EB7D
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsK2s/HX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727EFC433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703163496;
	bh=n+s8dr1Ruo9GXs0EZoBisvMd0MRzDUbHLbZPsQqW0w4=;
	h=To:Subject:From:Date:From;
	b=lsK2s/HX87KuDL1ty8/Vm0nPPEmvKkdbyDeWMQ1I5bZdREYwBqvXfJRD3cU8FXTb+
	 GqBnjdQ5jobzmiZz50tdbTGQnrr9vvLCpUmJyingvQ3o3OBc+qn0X5osYceXpbE6LC
	 tlsnnLVinYvJ4QIa2z33Ogte2ooMnjGWL+FM+kVtGB7onaM3/eu3AjVASkaJ2i9xYu
	 XVh2qk3MB7L268dpx789fd86645v3zK5binE5FhbrWd1P++BOOavspHQlTu3fGf5w/
	 z35zvllkleXDZ2x2FsYEM1iXhYdp7F16ZKCMTemfseMQzAc08sVKYDsBq4S50/CCyR
	 tNVolMA8qxCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF9DC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170316349636.15437.354105574879781305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2726cdad970b2f7f05d42e5d4d2548cee7108d59d1fbb58ea6e9a8803e5c4b
Date: Thu, 21 Dec 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703163496
