Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D186163A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8398DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671954087;
	bh=9QQjkR/gPufX1qxvSkCzJdHoKl1HaeKUfudvyvd7CuE=;
	h=To:Subject:From:Date:From;
	b=TdDYKWwnysDyE2xVvZTegEoaclngcw87lLbDAED3cyrT9YwBXzlmduO8Z/LXspC62
	 xqix5Ps6Ux1T6OI2v1ano05llbenQNe/V0PFNzKmiKDExSja6tD5vOEQkNSN7+3sjO
	 xjUPVsut/TmJwaaqFV8dl5W8fwbgYSGR1s1kqN+tOH6YNUHu3syC/L3/t8SsvUsP2M
	 XmsH+OIKOAJRpeiqYrftl38q9PFye4I+loevPCunaFvHZ4oH+Wj1XYtxZg/7MaLH1B
	 igxAUa/h1w5NC8wruP1xH6vtG3RJClFrufGZoxfn0orjUjvdWVOZ3bQdyBlINehzrd
	 wsmH/9Exak/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67650C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195408739.31882.11186014918743001510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d797939a4e4d58de5f125ab199c08475746d5224f82d4ab0c9c38abb5db519
Date: Sun, 25 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671954087
