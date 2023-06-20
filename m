Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A4B1380
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687236128;
	bh=4SwJZ6cBmJKP453d+1SFTsgW2/ePl4Zgsa5Mrb4OUMg=;
	h=To:Subject:From:Date:From;
	b=kcVGflpN8FzOJKSHI8SlYDUs/tpXVDu58fXGYaVkTv+JNWrcstul16birYvjvk4th
	 D4tish+63tp6vq1bUPdPFPt+BjgpKwqyRyzx7iB1ZZ56DkTwtiRqIg6/wxsFZ1ecZ8
	 OcPBvni3dsI5KXZxfI+yIy5kwva9lqUKL79nk8ynrKHQYp6kBwXVR/dUwhFFt39T/B
	 NxLVeXs0F9hoewekolP902GavVpCxD941KjKaPwTBYTJY0nCzBx7nJAQxR1EPrc17E
	 56TatwmMSCVgRsnHBkaZQbl1PSQfbOn9ivVh5gsPvIylZ0njR+wYcUTQl3+fRpZHSJ
	 zFUJLstP6h8tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80FEEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723612867.4389.13466945654380462007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7fa4b33ba29b226e8e7ddca1e9ce263c1887901a03cbf5ef7df5fbf0fcce0dd
Date: Tue, 20 Jun 2023 04:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687236128
