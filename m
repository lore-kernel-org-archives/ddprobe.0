Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431081A713
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 09:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0PMKoqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC586C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697015828;
	bh=NwUIQ/ior6lIfOxpE0aj1vZ8/xq9kjUUCXMu8YDuiUQ=;
	h=To:Subject:From:Date:From;
	b=A0PMKoqFGp1nG7nEtBI+p9Wf97Ko4e/EQcunsY02y4f424cp6rd3RH26zp7K3qZnZ
	 /UJgNy6/vsHfaWR2+q52czNMzOy7dvyKnILI3fHYywxrU4HKdalAkrUuthqmQTGB2W
	 2oXfXkPsBzzX4YZeGUFEfXrIEiCvIxIC6WBv66Y1KYRcgU3VEFPPG4F5N4FdIKB9Ph
	 hCjHGH8mZUmGfcAz4DsXarjWN9XpWJLmsyToaVB1LMtb9jBDA2lq9Bz8QiQUBNsb1B
	 0yOLBTlde+mBVZSnmG8lgGUpmSxT0hjvxhOJm6hR7O/xSwRP5ytyIvJtZnXKQX9JFi
	 IsktkH9GT+Rrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E6DCD6E51
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169701582865.5329.17087004765910264616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab98059f75f359258e4019642b712e47c851258009117c713c07f17ff522c5a
Date: Wed, 11 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697015828
