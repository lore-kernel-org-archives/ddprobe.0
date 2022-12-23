Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D203B8476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4FBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671804087;
	bh=S3bylwRTNiZS7339cS55FMGjW2ScGyR0Om2PGk1zNZE=;
	h=To:Subject:From:Date:From;
	b=I+VekyJdMRR99vHpz38BTYgrJuWqqtJWPpUOBfvRp357Aa2lVu06yxv4vPq1UEEwz
	 NYcx0ZFawUGMay8kiyQWbDOffZ+84xzG8lnqpL0OptvicPCFF7nzymgLd/ajbmrvEx
	 jjWgoVjsecI3m39ilvDRr3haI0GckqF3XpUvsLtgLKm1Wvn9Ijd+Opr/Kdqhv/qpPL
	 fEnyebeFI/FDUYYo7WNU5P9DDqh6A6GMhZKXk+Oq3vJGuBs4LnXJANbR+l3APqm5lX
	 dWZ5hY/WBfMRPC5rj4zuoJT7ZxogVhVRO5JjhK0RaNosO4Bcqnqdg9FGZuRwE9K3vl
	 Iw0BozC42MqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C34C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180408740.25904.11240941749486412443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044ca0d847d5dc3d642b136b2c277029583342544c8ef33b1190c6cc0be4e71a
Date: Fri, 23 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671804087
