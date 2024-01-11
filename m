Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCD7DDA6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVqhvpMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA49C43390
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704958096;
	bh=KPqtem6fpnzOS08VZNuQOA50Tq27kerMCp4ILB1c93c=;
	h=To:Subject:From:Date:From;
	b=VVqhvpMurTMV4B1RCVrwVszr0kvwyvPNWHAwaWQXs4V425jwTrFwBxCjReJjb0nVs
	 Iy+ULFfGhKsASSktTw/x6mLKJ39rlaKKB+rAeX9s0kmhYwz5TZZcu217sojSUwDYGG
	 s6vLEoTwVJGBAgj674amwcSbAeqpSTc+mA9Lifi5/ZBBMqNlxJC+F8/RNxNu/I5MuD
	 l69K9/AxLxoTOVZNOzDKDvM1zaHb2kWO08hTNUf41HkIA6K3nQolH7tCuMJGhszTo+
	 Mo4z4F4v3FLiHpyPR3xcq/UTWZVZpqqbbxPAZgjESD8HAMQI5LBZM7bZYZlroJ/7wN
	 QaOR0SeQROudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DFAEC47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170495809650.17130.430857236397299095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d68384d4724814e61d156706eb30d0bd18ba4104a940a776c8991fccd34d3a1
Date: Thu, 11 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704958096
