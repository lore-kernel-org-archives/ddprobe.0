Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640FD1DED6D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749657594; cv=none; b=dDzJ51bWdFIcNxVh353ZnuJDRPjOePnPxq0sa83PkUs394UyI8oFn+Xk/KkJnvg/Gz8Ghf4MHqWN8xViiu5jNlKZDhmpBy4fTD73uiiuz4mrT7euvskD4bpRhnkEsNDsTCZsDaJuNEmbkGIhwLOZ03MV/ykLRRuC6KT7BM69lu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749657594; c=relaxed/simple;
	bh=8epTd7gfrtZhNbSzbkqVzIoo0rYlqde0SEMTdoOQpu4=;
	h=To:Subject:From:Message-Id:Date; b=Ha8EX8/mmTG4sD/3Js3UYh9JSwEbkfNhDFRfak4fGqHLvSJjgaKVKOiEf3GX6aqLOr6D6vTGR6NNa4d82adgZkO4KduQNy16RGu2GES5DnVquNChGWTL/6kZGbsErsDAUuq80lq8DY3x4pYjFWzDudEEMw6oQpR3kHCEAGIcZ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nokxvpJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nokxvpJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF2BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749657593;
	bh=8epTd7gfrtZhNbSzbkqVzIoo0rYlqde0SEMTdoOQpu4=;
	h=To:Subject:From:Date:From;
	b=nokxvpJKj+tOPl1etK1sbntXyMi0jdyF6H7t+iHw8ZWhhs1ih+9nVsrDd6mQGo3rD
	 ecSIvQzmw4eeLpNiclHgLoqht1GE/KJ2cXUyoAKm6QFsNmMukJJwgwvFcysNycsOYH
	 O7OuFgaunPvkfzSkC5oEEdTZ5WyZ1KIWvDMTAZBSMNjwpZs1G5D7i7axvcSS6rfXRN
	 wLFzYPXnRvWPyxKWHH78tINWZuD9h3h/1o9/H3i4tnkm6W9gczCGIwWrNiKtSMAaJJ
	 jq5tc6M2lJ8dkQfshNIf26t6M7U0SVQ/nVFFP3EZZmGoISTMNncrhwtBhpA87xIWwM
	 1cKtvTjUHG7sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E2AC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965759373.6661.14766606546005045420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f6a122e5c0465eb0d131323e7de621db068a5e5c5991f34e0a3acae01f23ef
Date: Wed, 11 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749657593
