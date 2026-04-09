Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B634E777
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775768855; cv=none; b=j1HbgF6Von+MJPISmd/Vd5SAmk0li/wxQKJ9POh9BUKRsrmp5xhxYt8tRlI0/aJba4uO0C3uKTwr8V5pasegwrBzkXGSwpHNB2Lo1Yn1/CswopYOAETct76e+7CcA5Z8E4lLVyOB9kY+CaolIuVhzyJhBx4IZdazmAJD+X/316M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775768855; c=relaxed/simple;
	bh=pI9IsQYeRXbPGJFpNp7ESzZE89AfVttY+AYyiiblB7I=;
	h=To:Subject:From:Message-Id:Date; b=CahCp48hrgnd139yyuOv7VfboItJnlJDwt3udVmXsGRCGS2aeDPDUbwLGPG66oymy2TvYWKp6+DhlnOv3obdXTLlFmp1hkXNGsKSxNdKDqArIw0yxQd+A7rKlia9/+hqfEHPSg1vYupNpY5ASGpgOQuGoZLWgc89nRVfWu69YZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCmFyRIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCmFyRIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0402C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775768854;
	bh=pI9IsQYeRXbPGJFpNp7ESzZE89AfVttY+AYyiiblB7I=;
	h=To:Subject:From:Date:From;
	b=sCmFyRIa/JqiPfkHwpxFJBWK2bzLJLI4a08Uf0Xc5WyiCP7RXvKWo7Ldg1y+4pnF3
	 Ng8geJNGJ6W5hIL6fdxb/dnAjvOK6lKsj5JheGXYllNwsYc1+sBm1aiuNjahNm7HqL
	 yjlzFxslB9JsO2CggaQ1d0xOc0Hxhbyn6iLFtIthcO6Xhy7b+3gYbwVq8sKaUlwZYU
	 icQ6clBPhaRLK0j4c19V0udshfE/teIjTmKlk9EjJjnF1HE6OGl6efMY7T/ZMAvFdG
	 JigLFIdDHrSDwb6XpyvkLVYbo50Njxkhytn/KcoAflX0iv9+TLMvDyL2dmA/6PQIsG
	 B6TkIgvZ7g+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB565F364BD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177576885369.7744.13857360769515813944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c93bc108daffc1a05ae6ae0ef0dd2c444a011ee58fe0578b0f311686d2262d
Date: Thu, 09 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775768853
