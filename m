Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26077B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A02C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664879453;
	bh=TZa8KHrzrsyDFvKOQ4oz8B84lk0cQwxhBCMNgjN3x9A=;
	h=To:Subject:From:Date:From;
	b=cAMa2KXJ4PXjbMVO8wEJ+WMGL/9w/AJoKjJt/ryRfqe8Fft/81bHXcRq9rQu65ky0
	 hMcRbHfOT1+wiaTjY0eG/Q5TldhRhnLMRl/dIt6YK+RAIu/B552El7Xp22Qo+Rh4R6
	 HPTjmvkucJTkAkv9D6gdVrCm2VYFWAnKsbpC2qHJ89dG6YkMKTHTZBdwXhFe1/iC4X
	 QPOAv8OCk+wXL0faPGa8jBX8VyaJ3pklfybIgUHtrvuim/zboaZSZ5bDMJWo8SnNk5
	 ONzyoFDwN0AW0LrYdLECjmO/UbFkesEUylH5AK15i+26iHTERV7jTsShcxVgKkt08A
	 0WIBAPEgExHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EAFC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487945333.13952.1357741071844599057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 582cae1661fb5ce898d0a0ad782580372316b034fbe0f3c02199d549191ee250
Date: Tue, 04 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664879453
