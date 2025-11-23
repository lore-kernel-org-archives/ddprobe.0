Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252473A1D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763862714; cv=none; b=iSMY9PC5Bn8t8A7qiG9L85IhM2fYO82SWsY3vX6lmWaVM11UhP9lyF1gLAF6HRm9BefLooTC/VH0y+TxA1rqOmjnwTYMNEYEkD/NXofpO7pwA0WHWu+i9mzZQEXtAldFVtPTxl0kATEgf4A5nsdHF5F7koUoiPpZHCZ3dqTklZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763862714; c=relaxed/simple;
	bh=7NZqrYGz9l07tmXxlmEPOvH1XBJcZw3QrLjGskXw7ug=;
	h=To:Subject:From:Message-Id:Date; b=B9vkCT45gMZ0EWbujIGrZhJJ8m9h6aVragzRHnYLSEzKEzwgcX1dBn8191l0t5M2OlQtFOTlCbAFeP3KSLeN07VWwbxgE8gccPKPT5FL03ZiL3+Ase+mdjX0iOyLfA/gnCgX63NxMuzwnfoSxUzC5L7NfqvaMbJgjEBOjOLFCl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPaOQFyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPaOQFyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA10BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763862713;
	bh=7NZqrYGz9l07tmXxlmEPOvH1XBJcZw3QrLjGskXw7ug=;
	h=To:Subject:From:Date:From;
	b=mPaOQFyk10yUe4xWFouo9doZsjor2k2AShMYGhzQ23U2qKM1nHnIxF9129qGDFLN/
	 IiMmxTHc5NJ9sVt2fZEgW1d8lpeElK3V1duLsks1IMw9N6LgVZiN0OsEpCg6e0P4gL
	 zngKa2k6UBQpq9LnSU3q3imtniOcE1jIT1R4w7hlrRRZbAAawv7RlCbL+ahStorESv
	 Tmu2P1wrXJTtR2x4T2J/HZJZ0e1yIjdx7sfZNKoErHiVPpG5lpdMjMBc1dJTPKuFdE
	 uFegZ6v7rirn4jAKEf0+fajWZQPT2JuJVUawYmPouiQaNfvE928Qu1fRmQnEVv8DWi
	 bLX9pPebZrZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93544CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386271359.15521.10733882928761278809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db460479d243dd1569c0c3881004e16404046c97d9fee4b90e0bceee508e582d
Date: Sun, 23 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763862713
