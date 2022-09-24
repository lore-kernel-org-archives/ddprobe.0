Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1978F55
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70705C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663996853;
	bh=3Ka9hNsuSzg/MS7HvKvohj9Wd0NYga5Lvi27BKp6p/s=;
	h=To:Subject:From:Date:From;
	b=pMVFN6914KdkBzw4Ze0xW096G7RDXbtK4t1uOSNwUlnLwsRw37Jr3cpJdP9KtyTlg
	 +/AQlzXn3gHPTSQcoz7R/ipjWdDlJIhI8QgcZ4gtf5UQDPJ0r+881rPw/DAQlE7PdJ
	 7PbTsBY+kD237ZNY9n9/V3R9Rb3nRt5lw3ZGggr18u6UAY4zMXJvrD3EUJp0qnoysV
	 Kb4UbhQ0n6Q3qgZDiz3m6AMhFbn3Hoyspd4D2rUd1dACak4/XfyxeirLKc4bh/4E6M
	 Rvz2Bkc0kIn4Duqpy9tWfjKDMR40W7NH1oYLwqc7pLWO90sIuj/26g65MkcNCoUar0
	 Zl8BpvPsiS1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53975C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166399685332.16084.12891408957968200783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43fcb8e0a00e34a9bd112076c0f5139eb845024e1e456ff32945e2a02c98f8b3
Date: Sat, 24 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663996853
