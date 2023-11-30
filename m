Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EAD3C07B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emM+Dl//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E11C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701343696;
	bh=az0WHDTkQW18YFgyFiAVYqjtpD48tgRfLTiHBnra/0o=;
	h=To:Subject:From:Date:From;
	b=emM+Dl//Yss2bume1Bq9LSaGNA3ppq4nb53WvIK9qugM/J72HmMm6hHzGTYYEfhwS
	 bUMyK25Z9LBz02F/Qv63ZvruYkjsrm1xVqrHztyW8QKVyl1Q4mPKPX6tD05WJJWocZ
	 OaO7j8wsDvn1HFd2BDFaskskdPq58rjqWGgTHr1t6y2/q3ncOC06dk+CXPoC9V4Joc
	 WjRnS8XnSUv1k60zGdTiEO+OD3drExnsusE5NLwJQ4x6dtZ/Tf8nvPTCQ2r84hnLbG
	 McxRJ+iNAucmX7mmo1KDwMGpx6MJzv7+laZRRznGre2qUd2WYLSCAeQZsxsJ6ign0M
	 YD8LXlqmuJI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C2AFC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170134369643.18853.455368392871076592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f85ede5e6a10f016fdd561e170226e09d500c3f8d02a1b17a32f99931cd4aba
Date: Thu, 30 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701343696
