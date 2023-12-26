Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440674CB58
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzkK0KWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F77C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703579896;
	bh=d/OMNcjHh/Nxk/uPFJolVcDcj1ATFfwD+ACtP0XtL0w=;
	h=To:Subject:From:Date:From;
	b=DzkK0KWdBaN0yNVZ4zb4+LkqZmpmdWvEe29Tgca7mz9QLBW6ztSHTdvapANdMrRPy
	 OmWWTDghezHV8JmQ1Zr+6mnOvUdrv0NLhVYf++CPU+pNyNq3GCR5M0cjqb2tQoZS+r
	 odsj+AK3m5ZNyHD4Ila8CJsXy+6hTWRrzHM9wMwtPy7oAYOMynbBH3l71vKpkQYoyc
	 u/NT9dRcz4LinTt2DS1IttKgm50kD/NCEspMYETaJ5IOBFmc90cfHLs6kl/u/3Z+4j
	 Sr/tlH2WrbmFal8/E2DBMO2j2mC+H8KggzzitLhdkjhR11kwNP6cbo8lVnvkL6QTaa
	 OiOZLKSUG+pgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81477C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357989645.10141.7215093502220151520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422dfb45800acd0a9dd06046a51afea2796210b02965df57085f807b4530988b
Date: Tue, 26 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703579896
