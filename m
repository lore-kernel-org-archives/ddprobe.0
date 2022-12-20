Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD83910E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 885CAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671502887;
	bh=wt+8hYAGsZsfrhwMUUHrKI/LjU6X43J3oZ4Op9x0RBU=;
	h=To:Subject:From:Date:From;
	b=fAdB+NLX50Ic2K6rwyzNPK1iouWmdpOf0CSgTQuWbiaPekifZjFR+JhheY8pQ7+Am
	 npbiwsmXcaEQoBrDclZ4uApb8AYUqHSlp/NlEcZtwWs3vGBLM77+c2taB8gWXuE3vj
	 zME09CqoFwP4cQZ8Y5/p4qctXJdImXGOSqzaRyrgd9kneQXG2nCutZJXNF4hLmEYKC
	 OYu4hpo7Z6CoRK7c+Qkqa6CA2FKr7aeKIXJJ+GaoK4JPEan1YGFy9Wess1idMu8uD5
	 4IkPQ6cizvDnqBr3CM5SlBsQElNhEO/5SdlE16KlHSCmO99xCw7rqDWx7dq26+Dv+a
	 bxPtCy0DU8rWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8FDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150288743.4871.14612630773587762986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e0fea38c3f61f61d951253dbcb5b83d7d3182a641b8270a3fca123a50f5747
Date: Tue, 20 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671502887
