Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5643A26AFC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738071354; cv=none; b=i9Esy4sWAAqa8/FHEIPKk/A7ddovgaHjnEpcpf36yGw6aZL/qp3EoeMklFh7ky1zHy24k6IOfSobdQCz/hbrB5or8xUD/Dp6ETjvMlyzA7BhVtXUo2Hnahg+cYpQm+py/JeVKphC3ovQYvm14T9cW+mc6QhTUvib1m7X6DCQ7WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738071354; c=relaxed/simple;
	bh=T/Jqon3E9cqvG+W1ImgTmzeaHT5cD6kT8z/6CLUT0SE=;
	h=To:Subject:From:Message-Id:Date; b=CA/wINBUfqJijHtnh7+UYanJmi5f+1gO9NzX+I4FIrtOcgEOvE3wGtS1AvmZpl+AUcMFSS6+jl1AEMHLvHSo3XnyS3FT75q6y60U5qOmvWq8vDlpRAxew+IzxWs58ZEfIcg3Sg0o23uL9KjG8jwf+IRsi/D7V990SUTA5BKwOpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKruLM+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKruLM+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A33C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738071353;
	bh=T/Jqon3E9cqvG+W1ImgTmzeaHT5cD6kT8z/6CLUT0SE=;
	h=To:Subject:From:Date:From;
	b=LKruLM+wlRxxcrxr5fAEUmdIFbGgzDXS8OkqVNQfgmGYH3mBvRo+UsXPO6kCFTadh
	 iNMh2/qnfEBuML5ukf3JA7sGTM/MigTLk61F0vFKMiteALJx/HKL8pYCzlTrp2pVaZ
	 1EG8GXWEb4JhBRNM1F9FAMpZ7s5Xd0WcupPSdhMh6M990IIlq1FajGt8h9m8T5SZI2
	 aktLJoPYupME4XAd482+MQqUCogTopY3HgxkqqSfr4y/RVFvuNwo2EQ7y7DB/eRBKh
	 +TzPzX+gjLqcMo77/hAvsD0MHAYXjspdWXh+fJdwuR01lk2BqI6WWrP4Ocq0jxPRoT
	 vxOJHBLBu2mSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A142CC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807135364.25903.7210193950802637587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64676084cda648b7dc78d012ad794af3664345d1b8fe44111715385f507aaae
Date: Tue, 28 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738071353
