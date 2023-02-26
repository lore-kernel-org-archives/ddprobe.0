Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF7B17EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF6DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677402966;
	bh=PZNZvt7FevgTG8SVWjdn8Oc18tU9EHtw7XtHItadDcI=;
	h=To:Subject:From:Date:From;
	b=b3wsnc2EHQSdrUq6kl9F9D3cJoyfSIfVUPZrE1q7OplQO/oue1T6REOgqRWxSZ1ET
	 qct8cu2IZ6ImR0ZhhbPx6WuqSB1t+MXZc8dAyLPkPw3pwIXFL9+xEFgM1riL18Nhps
	 bXLeUs1/5Td83wmWbEANf7jl8YZQICVCR8PdsB1rdO1VmmltCCuZUu+eW20ARJaYxQ
	 5h6D3mhJfpCICwqMSoQpweIu5D8dAmHixoaCZbhnwVsunoRorY4p1VyDt5c5yuLN8A
	 yE36ajcFuUuGnP7Ku9b92FKTyTfvgpaPCigJXzcwZZ4nAWsS3M/ZqfPOgG5O939Hgu
	 niBAVQbD0FdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC748C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740296581.14061.4102736280485680356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb2fa0d8fc3edd3c3a0e6278662ce9f50364abde5f8e1b8ddb44f49149939b1
Date: Sun, 26 Feb 2023 09:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677402965
