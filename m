Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E243C27706
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E77DC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670367054;
	bh=TI8uH7chjLCcovRkDDeX+oMqnefrxsagDjNLWHbkfcQ=;
	h=To:Subject:From:Date:From;
	b=b6q9bNu7nMdJcZCtIEQ9p92SNVVqwvgkA+O4YgtY9rBn2TaDFktjNMMiHVmohpfGl
	 ykNoig4wCRYWvmVGYtWy0v0v+Fcih81O6L8SJsC1zW/xh0wcs/MDduaMzftF/BvOJR
	 e4BRYTIqs30NY5EYFJI0PqoJkm8I+ePM0l77NFsGZzoVb7G32i4tcLKcGy5s1iDi85
	 zf9A1V4aO/ivOovdcIGIQIgPCLCwI4ebe/ApJXWJJaYPBhOPc32uKF9XdgfQVNWgJY
	 senBFeuPJkjt2Ob5GcFa/o5LNSajwtJbE8AnxPC5u6SXL7phg/Ms0Ljr05YIeHCO8G
	 r4wl4UJy0CtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE8BC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036705444.15989.5174651808637699145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448c86aca6ccfea5f8e6b8abab04fd10fc1a0118e7569308f5cd5d4ee02d65a0
Date: Tue, 06 Dec 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670367054
