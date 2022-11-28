Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC404364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DBAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669607454;
	bh=1OCsM+RyX7S0zM1+H6C+Rs2GGHrd0ivRlqJvvj+ADsI=;
	h=To:Subject:From:Date:From;
	b=u3QO7DVOp7czeXYrVKEqfBTUHgg4jnk0D4vtWI0TJJMAt5glIaOMmzxWFDjP1/rHv
	 OdP/+8NoSSE6ybczjSEa8gWzq2xApUqM7JBqkpt7FviYBMPy0Uf9ubrYKc2IuxTuH2
	 7Rk2cvv1X42zqk/ZTZ/dEVWWlGnG7CsUSHQHgzAg/m2MX1aqwhLqJEDrm5BP6O3LhD
	 IUSPy8e5m9kYChVVRypWkuoBBjGb02/MO1tPbcDxHcAaDdXA4GfykneP8o7wbKK8gt
	 Cq7FfTF3fmhHluFsY/hLIT9nyjq8RLfe7w9S0TcBMTTGlInP3zrXQLWcXeaYgK5M50
	 sF7dSqBmLZpZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AB6C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960745434.8560.13682611463060984137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f64b4409c873e02a065c90c3f70545e705c21026a020b4bebc0634c4fd93dd
Date: Mon, 28 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669607454
