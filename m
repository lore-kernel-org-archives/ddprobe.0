Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8B328BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IInxhV6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F1CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696712828;
	bh=QgMvTgzqdKvF9eHFTktR0/DQCUvn3DOwtcCFYgTmN7s=;
	h=To:Subject:From:Date:From;
	b=IInxhV6jexhPr5T8hOAFWf6Ma3k0+kul26FwtwowXUCwA40MXoYovZDOBmOlPdd7K
	 p3zCHIAQ7O8v9JxUhr1J3bOA5hDFohh3wdQgVubsEpCuSP2G7FRZnX5ymORXQ4ocN5
	 L+2Qg+FuGsOJcZA6Xjd7A69DXnhKW8SLvRyBIYRwcLzP4HfaOJyKUIF73xktUNgPSY
	 6rYchg1XiHLjVXyMmAanV66usdKmOlTBspDDrdXT51NcAPRIzaANFPjWBw+khaVR4V
	 ykAI18RxfQQczVD08MmYu7TsORX8jIaw2HgcXWtNdGh1wadtqmJYgJi9G+Nx8TaG93
	 tn3MHygbkUKoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B128DE95A6A
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169671282871.951.16011934149870256663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6ef783557728cc20350caad070fec076d05967260c4d8a156b6356667776b7
Date: Sat, 07 Oct 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696712828
