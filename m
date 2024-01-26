Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01340AD5C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706245697; cv=none; b=qlpUkRCz7Uqi5l7DB00T3Zw5yaQubdnlezqxetcLVUtrQct8VEkNf4iCZE5VieMNlbGFHHxkWgEdEJdzOm6mMHNuMtCNTmv3GumcisUpk0vwC5P1fA4IO4PMMX0dLuToQwngNymmthTF4IO3r3kxBIJT24P0nCVqtXbHt5N/qII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706245697; c=relaxed/simple;
	bh=EmXytLGqZlm9pHOGiiMAiuQK1vAbOJ3A28okZxUAkbI=;
	h=To:Subject:From:Message-Id:Date; b=ppCcXdeRr9E2X3PUI7d4GU6f1Dw5iAJJRcrptXS+5/qWGF6P1lDw4LYM7jiBpNxxS0NXAcGJakQ6/ES3vo1RcAUnpRePluLmebU7UM/l7xallRzZvqevrj865v7CHELaiuz7+m2ljCQ8bZAwjLpqIsiCuTyHbw6DovRDVE3d4mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBDGzISB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBDGzISB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7828EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706245696;
	bh=EmXytLGqZlm9pHOGiiMAiuQK1vAbOJ3A28okZxUAkbI=;
	h=To:Subject:From:Date:From;
	b=LBDGzISBTtoTQCcADiOghs5c3C9ebmPMEqtYkMUBeKKe/bZerBpiacUAtoA2z5Z9e
	 2h5ExbCEWnRPZG40ykf65x3lxwHmMvzVaVxWlq0NYotBqZYQFJOcbMGbdZwD0QEkWX
	 6c9q/J7rRfBA0cguBajM8jS/+hn9z7nXAvQm9tgSqbxeLnrVd5dV1YF/eGYsmj43Rk
	 nowJWDqOeI1pIu2HvGqJJp4ltHeFE03BXMY2gwN5PpH4vVa0QEQszRboB+iCzwneW/
	 mDEN4BbtUfHwv+rxZ4XKJEJw+vyVSdyQcQr1u4ArdxrNTyNMM97Aqn0ll9h+RimEUH
	 Opk2O+WK8c7fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7BFC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624569638.32125.9367894516176009184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf70340bc4603257e95588d64ec304b4d2a40fdff86fa81bd196323473bb8924
Date: Fri, 26 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706245696
