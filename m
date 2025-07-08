Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DE4217719
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751944794; cv=none; b=BYm3V5SGg+vkyiGeBsekoi7L5Py1Sid0C8NyitxvFnBht5A3jM9jMbobaTSLh6FGkb00vj0UH2oaxigjffeYneNBArGw/KxFsaYfYFUhFX+LTld/p89OVV0ZFe/8UbnS4snfMELFTGVDcn2dUkdw3IUGYxVw3AFTvoNJ+Hk8IJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751944794; c=relaxed/simple;
	bh=SW6o3NuXAJ9SLAWaeMCe+OYAkjJ9gUo2yyXu9Qxa+zs=;
	h=To:Subject:From:Message-Id:Date; b=UTb80302rrAW6i68zcLu6LtxwWSvg6md1GlpCHQKn4wC6khz0iTSAVGNeuvwbjsM55Xd8D/UreTIe70aniJFZOOqbToRTnEZqwSb8vNEYbsDi+tqqn4t693FowP71PeLvqzcwNH6JcmAdDAYd1YIGFTr15GNfueNgWWE03WIcqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUjBNsw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUjBNsw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D6C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751944793;
	bh=SW6o3NuXAJ9SLAWaeMCe+OYAkjJ9gUo2yyXu9Qxa+zs=;
	h=To:Subject:From:Date:From;
	b=XUjBNsw2fe9qFL8brPxXo2umO0UhwGu0lEJKIQtyDJfPZn6hcYc8uJmAaBicy485/
	 4o8NUpr/QY5TS822Oq0Z14GkUz9ZycjHxrvOkHRDK3y6OKO8u0X64+/J1hqexLqzIK
	 eyNf2Yp2mLt8GXiuzPFTXuaD43ucz08Ez8s2ezC26qjyIcFwXsfBp+O2Mr6L2zt517
	 yYhq4l2oWV9ZhjaczsnP1xNuuEykfy8Dq1MNYMyClY4Fip8BVTZ/nUUTwZMMHWpoDq
	 eu0bPiiuaJVspE2HWaJqIf99q6MYgXd0DQnf6ZXGbkHYLB3HrO+sP/aMuYLd5MmbOh
	 soEh3ZtXd0GHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935BEC83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194479359.12918.8189864053975540159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db434ed48eefe6cb4f91cc4842c5df6db1b7b783e64a0419cfa1a451ee6af13
Date: Tue, 08 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751944793
