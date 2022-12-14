Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09DC8489
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92755C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671031887;
	bh=KB2CgOKR4gmBpxaEoqklW5dVQVdubs7HeSBIYn1mPqw=;
	h=To:Subject:From:Date:From;
	b=S7OaQJacYj/cXavOASuq27ymWBs7MB15cyhaofLlLAju3enEK4zM+4soQf8MwUlIC
	 lIt1MllbiJ0E+nXxkVEoCydBwXKCbDkEx0fGDTaw7Qvq3rMdh9l1SpQz5DeljV4+wp
	 lNcJ4h3Ng9J2qXaf5xQ3U0cOApgppKJVO/bzSxwCNcxROdNutw8OZ0c07VSlQQBM11
	 BW7uNfv4+uolm36hStqrAZbAIFDNYCJaHXD4PblgYHh2hkqIyojrwY0dbzZtCDkP++
	 hcqXvRz/q3FDhIa7BlvgMA+eg+PLrXo/14gTAGpvtzwnb6PdTDR4Fz9PVoetiolv3u
	 o2sC2R9FBNuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 721D4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103188743.30797.4784441118166608535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7aa6c7091d588d44eba986a4885e6b5aedb22601d8e5f5611d5af106b304a7a
Date: Wed, 14 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671031887
