Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80EC7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 870BDC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670983887;
	bh=FkMNqPwAdMJKczOeKL+Ko2M59JosuM2ABnTy/V0U7k4=;
	h=To:Subject:From:Date:From;
	b=PpBZxew2gBF9DfH1FGyxi5SQonULNmGwxMH5QsJmh4zxmex+2UZhUBj1dmbYfH2i+
	 bU9QI9Kc/k+2PeIc3asB6KPHMftB9WPTyRb8t2L9sMm3RkZG93uGaE7d8OAVmmmkoW
	 eyKekpYY1h6eRz4/Gooaig0MbrCAl974fMZRWUVCHhctwV9LKz3Ygi4oIle8+BxPY0
	 KQT63RACtwV26vYduVzNNcJTY8JG5Z2vRM48VihvIMjJdy7hHOw9NmzzJtNOvY8I/6
	 y0WmD9Kn+FYhdvzjMqe7PaeHxj3qMk7h9a2GzPdb3ALr+B4IDrpfS/sq4nwwk2QBv6
	 7mcP7/VxI15Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70479C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098388740.2056.6871853159335314414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aea06b597f762d166fba367ef237cefa531dc0d37e0155a5db249a010190ba
Date: Wed, 14 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670983887
