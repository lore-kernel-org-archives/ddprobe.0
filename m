Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770293939A4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778973034; cv=none; b=Hhgs6NhcIW6SACS7IvxFrdENYYf9tZGNQA3LzrPiiuuMB4oCbo88jIas7JzSrcUd643DtKuKFJyJ5RIuV8u1riO2G4Xm2KyajSjStBO8plQx7Ipu0KR4YZdMbfHzXbgbh5r9WHT0GILrGEsol65xko+kiKYKL5Ixs51ez38Uz2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778973034; c=relaxed/simple;
	bh=/BEi6SYdCU8LA/71IqI4kAtt1eCQy9DOux1FVjtlvmk=;
	h=To:Subject:From:Message-Id:Date; b=Yl5IPnW3gbQBU4HNhQlpFdZrkwp/9lPgAz4NgwzMYk8Ug1+LeTZEbcAvTrajzBiETxWyRezxCgn5OLvoA7sK2y9pMBmlrRPrAelHuWBb0aQbezFEK5JBC0y0F1uW40fQWVbtXpnHWaXPBPNJ3Jhg2wptLSo+giluEtcYTmix7b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNYYD8v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNYYD8v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD9AC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778973033;
	bh=/BEi6SYdCU8LA/71IqI4kAtt1eCQy9DOux1FVjtlvmk=;
	h=To:Subject:From:Date:From;
	b=jNYYD8v9lITVkv+Vf6Pn3cRX+gEK8EETcn2xjhd+CW4kcvWgoU97XNd61958ehbfe
	 sM1Pj2v8HYqM3zSkiI6K1RxK7RDwPlYDbFg5rk+F7eIYH3zbOR+Kk9nHtKxoHtyTtu
	 xRhCFmsuU8FgJtncbM1JSxl/Fjv/iQGhJz4gO3Lfq9Z1Mr7sH67emSuJqdnIyLAt6j
	 cU0KhoaWReg4riMiwMAomE3Lqtto+N2M+P3m5fFo+gfHY7dQdRceWavAztmnXfqxeD
	 /PL9EzuaoWL5aRB8vIcM4BLGveojQP7Oh1RBNw6+T3EktbVh4o5d2v/W3CNAQ4G5HV
	 b8/9gfQAOfpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA33FCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897303368.8716.7704963426501938319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f59d93b6b72902667e4ac50ea19422d5a7d16a5f70dd81b65154118d6f11a0a
Date: Sat, 16 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778973033
