Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038F07C
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91014C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671064287;
	bh=7M+Rs3lwYkx0lwAamzae+70XNsV58W92YaVmt/c7rSQ=;
	h=To:Subject:From:Date:From;
	b=e+vs4D9RY13uNR9biO5ofRyJqMHj1p05o+aLXgiXp+adEcW9KaTLe34HBbKKLY9d5
	 ewKds/BO3vKZhrhAGvjhOjcFJJbuB+sDMOMbLlWdG1cfgQFqJ0DT9ftJmw4agjLx08
	 wULjFALEoF7VBGeLJAQFusA6mQ/DiKOO8rsxlBqlPm68EJbH9B9dr9crlXfIFl/2Yt
	 xWkeUGa7lZrOEOLtOQEt9KPNl9rmh4yE1AqtSg8omqlo03JRMQ2EehO7ZAM3cqGnlI
	 YR1DpMwu7/XnC6hlF5tK7TTkO2SQiQAv+TLBTCRrbqsQLxWULtpY9mNJshwWS7LBfo
	 NVqp1qFdSczCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C520C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106428743.11123.12251776558231614860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef70b6b7b86191e55fdc6d63c295fde94b011634896d8c4d6b75bd6e26321b6
Date: Thu, 15 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671064287
