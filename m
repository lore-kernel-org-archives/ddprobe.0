Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCD317D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17BB0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674201126;
	bh=TdmmwHOpJFk5UuCdpF1WGwroC5uNAeshRyB/ySHKZro=;
	h=To:Subject:From:Date:From;
	b=dq2N+NU7EBWTJUjkYY2A+vVV9lwNYZvZPr9oXp2VweuFAMulI545Ub1oWr4ZYt1AP
	 brF4J8r07dsBbLC8PajVyXSc4Ol+6a3Y5ZaB/4gfWANEyGnXemzg6E3A6FPuo1jw9O
	 sAhSCW5AZx/vbrG58o40lLKjUJD8xG+434aqn09nTODQr0Su6FN9N7mT+koKo2llep
	 OAuf78+2owb8GiW8efglQQz7UVrx+hVsqXhYshicY5yECdE5grkgeSDMA4Y/XkqcoV
	 dz39/ZAzGPzufKTwDsg2DWY8w4PKXNvqsrBpdnWmfbjy6RsiFhaYar74jjE2Q7oz4i
	 IG4fA+Ux88TJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E23F1C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420112591.25301.12199744565899414934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61008169ec1d156820117a81253c830eeb99b2838381d5364e8ae2a1f9477c36
Date: Fri, 20 Jan 2023 07:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674201125
