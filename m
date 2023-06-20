Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D7DC144
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF35C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687251729;
	bh=BJnJX1igi9MdVB5nbGgw1wNxfPWW9HU/MpEM6Onsqlg=;
	h=To:Subject:From:Date:From;
	b=CtOFWTMgDMfGwgoILQmy26ZonAzH2ZfVKk59dxldzJn6Z2glWi4vVo8LjogHJ6v4y
	 RE7uA3y1B7bxNb7wpaEWXxFRMglgtjHEpjrtF7N5YKRvJ/jC/MMbC4j9WCGbR0WVqP
	 42Fi9znqP49csqXpGG9Q3SAHCccR2v5qVj/dDq2pPq6e/D52cD8g+RZa+1CwlNOXDV
	 c8hBbX8GEj7ck9q0G3Qm4ghLzYtO3LrqWjLRHT3ysHZclO9qKSLqEtxnut7UJChA7L
	 j4q5Yfhmf9ky0IHpdJER5rxOsi7OweQ+orOvyX1nPtzP8VBjsWA0HXkrasxWYlmQmt
	 C/WDbZbqA0dJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D092EEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 09:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725172883.27998.17899438263518337135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b963996b941b569759e595188a9be89699f29ce6148ddb7c0c8f85d17688a3b8
Date: Tue, 20 Jun 2023 09:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687251728
