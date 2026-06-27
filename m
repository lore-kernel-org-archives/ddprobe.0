Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A494E555
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782550714; cv=none; b=trpZWUX2b/iHXiR123v7bFpEn4Nc+LmUKIS4hbBDtqF9Von0Y9HnPxC8qQNHfxsPy+xFT2fav9VsBEfn+rhqO6/GZSgyLJVf4usLYhjUkHIpCTMr6/OC3dq40RcyNdBLOkYaX6sHuez1xw/KJXeDVq6tylQvwNhMdNzEvNS2DU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782550714; c=relaxed/simple;
	bh=+4M9S3NJywHESbETYGslOYefU8mjrr9hNkBPQh4GTkE=;
	h=To:Subject:From:Message-Id:Date; b=bNQF93zLqsNv8KRwPCH3Kutr/mn8YTs/PNifpJYw89geKq83ZpgjTqX/GAMQR2iE5iQ5zcTfjY7UOC/4vcv0wYJ/tXFrgfLuXfQjrswR96j5u5HR+5Xpq6l0zy7VendDoWHQZks4FPpU75P3aHWhux6yQh6PfoboOc4SNIc5C+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVJgk1bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVJgk1bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782550713;
	bh=+4M9S3NJywHESbETYGslOYefU8mjrr9hNkBPQh4GTkE=;
	h=To:Subject:From:Date:From;
	b=QVJgk1bHV6wXRI79op7qiczZ6DX4fASJn8sM/cPkjExGgu0OOfb1zlBM+dw1QTHR4
	 OsyVj8aaAvtSXAnqNLeU/Qw/Gl3zxrdL7Lwhj+2YFWjyljshsrLNHc40Kn8na8S6X5
	 jsWAxJDMnqLGamalALbRkqWsR9jGcIvM+0sAaFm+QttgSRKO2sA0/ifZnL/BDfyd5o
	 xzr4277HyPU3v1ySP73j5AB24FolEPbpBs2pq4IJfW4tObxV11jYYkDCxb3GrVfI2I
	 PS+0T9u+sF0lJuvjesSjAjuJwxdTgB+TmZSiHWyMFsKkX7UwbsTOvpLnjlfxpA2UhO
	 yCuIv+g2mHKKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AEEC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255071369.19152.7569783716392046373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df76e0149ce18aaa7bbab6c59f5de081c4b2c0d68c5975e62fe187fa89da552f
Date: Sat, 27 Jun 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782550713
