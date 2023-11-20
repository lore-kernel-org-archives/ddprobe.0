Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459E817F9
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIqF+70Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ED5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700441296;
	bh=/52H0RC60J+zF3SH/WACZaou5ZHM7UZKcc2oL8z8C60=;
	h=To:Subject:From:Date:From;
	b=dIqF+70Y8JgATCJGvvmpXDA1V5NAhNhd/IWm1xNjPQnjgVfN+aOHfmB2989GCI4Ou
	 9lUggbXcERspDcTQ37ToQJ2Bz1AbrQ8kiz0ARUa83BFlBXYMfBMaBvY9C1fXjcm3jf
	 IcGrymbP8jRITDKZwtEjTZLkBvdUQeVjF9etSEyXlIOAeJpDY5uovyIJYik9ieZh/k
	 tyJ/MJ2j3e6VnxtLUgC6/XelHloOtJV5gte3ZZJqlQxN5f1fp/zNTaxl5MHTRV2rRc
	 ani4cstmcnYxx/7nHp/7jNA71PgmtzvQkIbJ83CJbuPB8+hkaT9hewkZW8o8UnCk4E
	 Uy9OduD+9f3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7F0C072A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044129639.25667.3561415638511508069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa53a0dde63f379b4f4b295df30550205e1dcc6fd1b66d4265c83cdb5fa8d1a8
Date: Mon, 20 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700441296
