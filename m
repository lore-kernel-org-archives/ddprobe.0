Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5772D360
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3FAC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687566188;
	bh=APreQWDtnb1obKMjUtFcJ5pprRkcLI53q8xpShfjAJ8=;
	h=To:Subject:From:Date:From;
	b=T4On6cFu/6SAKGmjNcaeJL9ZGioCYIyVm3+k3GZaZIukDnx0SMlo+Kml9HdO2ENs/
	 0dxvfKBdMs7x2zb0sRobERSomJ11zi+rdwwIUaUeEJTUG2Uxm4nHG2Ve218bHpa8F3
	 pV1Jj+gatx08Ob7pFCnIHWlAdDUWtXQGwyebU3Pr+1UEGMLO8/IKvCy6GdtbYJ1yqx
	 vVKFSUgvEXUvBf3XrZY5n/ws7Ypqv7UipquQKSHZv3fQFf2vOD9Vve0KbOsqDG9nB0
	 daLWBJMaQOzhpxYq4eGUM5R7QQS2vk1xZl4vNS/n168fiXmzyWSJ/0E7afgiXe7Pzt
	 jjYYdjSkpyTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3A3EB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756618875.5684.3519016716131483949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c2ad5495d011f660305af78e6884d883476e558b63ae547708109fc9929abf
Date: Sat, 24 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687566188
