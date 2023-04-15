Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DBBA21
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 04:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D951CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681532585;
	bh=HcyYJA7SdYZbeOtuE15tCVSpXAvfv+yMJQNH1GRzmvg=;
	h=To:Subject:From:Date:From;
	b=te+wnGgR/0DNlA8/jHU8VtIsTgxbyAe3OVupKT80OYy6JGxpcsQQf7lNiGFucQ7Kh
	 28EBlLoijvDgKMYYVCHHe2YqTfJzCkPcaox0ZfZaWcN1Crm/zvMtOto58TK6HftyBI
	 qrULG7FHlFytAYrqc9srzPYHYQk52GA/6m0Ku1+Porj4c4rq6fpSaCP0pVYeWu8YNu
	 n20dpvNZv2lpQRqlSOvWGc8KXOg7XxLyECyOXrfRxiguyZA26mew2Xau4FhCU/NU/J
	 7HF6VuTc1MEQOxHhg9cXRN/sqFKdYWfRg/A6K6Dp3waFDMggUEjnyB9H7PmvyydppN
	 hdOJaj2kEe4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA398C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 04:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168153258574.8863.17857693436516578582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12aaaf6fe89da2f1ce22d113ac6dfa7acd40ae609ed82e30c64030e386c8476
Date: Sat, 15 Apr 2023 04:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681532585
