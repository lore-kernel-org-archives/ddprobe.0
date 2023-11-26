Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25B9EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhosxUtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813FEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700962096;
	bh=3g/ZfoqUlOMx7nqqWssXOfiFQauQVPwldlXPMOR90MI=;
	h=To:Subject:From:Date:From;
	b=KhosxUtQg5UHI/YeVdBVa4x0q4KA76wtsVA43XdDMiDF1Q2xDJF96cvwYDXzhJXTe
	 QlkzhNTzcGiTXzoalYh/J/0Ari673qK/SrsonYiTX0Qn2lEkQqQhAEeUSJFhVZzSMg
	 AW2/7157U1q1L0WMIrdhqLKWKxMwYetbRvf85njngs+txNRn94VthD6jt8mS+7m+wJ
	 6kwMUVZ6tK1jLL7uHXaEMsAQgS5T7l2qwOShoIhp9RQ8UqbewnPJ9P5wZNfCMrwtEw
	 RKW5lG4UG5LpkOq1QOZz9bf8fNv2LifB8J1cFlmpElBkJIMSbGDsZEbA3MpfBYYBq7
	 5844Tu+LGO8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664EDC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170096209638.32298.7205953162210110848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae15efe647cb2fd6d9834f3b9a9c249cec8dcd846ff9e3025815ea9867bc6cf0
Date: Sun, 26 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700962096
