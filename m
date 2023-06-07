Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678513D64
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DF1C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686135125;
	bh=NMPNq6YmQEbhxqc5KIG2tv4Ikn1867YPlTURaABie/k=;
	h=To:Subject:From:Date:From;
	b=qGriRjW8Qawyt0M41wJeTgalFhLZpGd7nCUsKQmY4Hb2+YpivGpkni3fAaKnWxMU8
	 HvSPFH9ZXGuaFZKXxgGUUEQoGBanU/ZOaVemNbVHcAksACgHqkBrSLP15uutmY5enn
	 O6PeI8O9lKIUM7EkwQu50UllYP5vzUzZt5xH8FCx8hRzOdPBnCp7KVhSDp4Dp6apkV
	 V4qRg55TL+imABnnRfpK+Jqu+65642UyjNaerP59tpJAWy6Ktb30a6i89dxMzKK2Vz
	 vJS3xwEmEQ3hiyUbgQbSrPTgjDJDtKcwAtVs40YBo+24KPQRSGzsdOpqzZK6zwgw4N
	 5olVzf1TFxlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D90C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613512574.17813.9977700410733643023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a78641515761ea1ef4e23cc337a3fe7d69c364fbadf7114411db6085f73165
Date: Wed, 07 Jun 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686135125
