Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD65E3217
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A7B3C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670521287;
	bh=hqlCIJ6FOVOpzoepFKhUtMXeRjy2Ix+5EGMEB8JR5R4=;
	h=To:Subject:From:Date:From;
	b=IRgdM25PpdDhzhAImzF2NUKX6jJz0URmwepvcWVwPaN4RMN0QbZhLdgOaormJtzTI
	 B15EjpiKtF3e9Z3sad66PiApMo15P0laFM55mBnXfLJ5WW7JEyEjctkwL3e94zGsZs
	 GU2G7YrMvd2ah2Cvq1jz5RohgsnYu0dbglC5lSZJhwxQyduQ7xlzfkZU9zkQ7JuLNU
	 1iRs1y0GSWUPrV1+cNhPg06PS+rZIf0ebxlGbOXtec6Hi2VPxFaHjjcnhgRop5A6k0
	 U7hqCNlUHLMqJyo9hOcXrNdrEOyPZX+wJWXSOLvuqY4NlhFhtr81w5zzrlbU4aX1gI
	 e8bTX/36dmYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A918C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052128742.11216.1880435452973221761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bce3190fc86859e37bc157d83191fe884de31034b503f556d5e149dc8454ff
Date: Thu, 08 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670521287
