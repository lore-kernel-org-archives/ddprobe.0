Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3653C685
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apVKhezf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60FAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697648892;
	bh=fBcOqbV0DuG86xvcOhthoNArNwrCYapWR7OoSeEkfT8=;
	h=To:Subject:From:Date:From;
	b=apVKhezfMTykVwpSTfSprDBewH5pb91n0pXE54VXrsIVDUeAFavWeJHZgVckSBPIK
	 kM4zFna/u/CHSaWk2Z39NAWOQOdkq4keVmlp3oUittYdZy69dXoJcE+5sRbOl8V/dO
	 +mbChbA+iQGWvhpC0R1+cfQPzi7Et1AI2Dos2cCULXXmzGzY0EVwvOs/LtdoELN9jN
	 XPxo6A+aQbga+mVGtbkn7ErdOHSlt0JkeAioAEO4521dW7xowGmBCp2bm0I0XX5Mxo
	 dfGiG/DNPG0XId59zgvIxFqztbW2Hl2UGvJc8a0Cy31uPCB7u8DrOkohYNe9ampMsH
	 sHv3RZNgS8W4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DDECDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 17:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764889281.29925.18157161590834810814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7db4ce52e3d23e01cad3e4da94371bf84815df757c254e9f1c6b9dcafc23e46
Date: Wed, 18 Oct 2023 17:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697648892
