Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ABB8F57
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A61C433C9
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689540668;
	bh=gHwx5ZknTQqHUlLCyAi8836O3AtLN4DtwvwXE+NNq/A=;
	h=To:Subject:From:Date:From;
	b=MYyxOenzai0orX4/9oCpd+S+NbrFP3nf4uZS0EHvA6tErkEURPUFUQU0TGp9rU/NF
	 c9rlOF7jIVuiexqgacYWRDmxFeuTStgfWKS4DZ2gMWcgs0X3rjcuKiJaAdtWF/tytz
	 9Q9kWJ/q5ivP3R41d9sIA4W3oqtRL4wJo8/nN+RHVHBiZBfyRXa+uFMyv4wP29Ha7R
	 /xcydVA0ibR5+Cy3CWERH889/GIkoiPYnzSfEOAwaepG5uYst+GcWqjeYwSRjzt4fH
	 k0CeFA8sBDzUivI6pFGYtkNjDqUhgYeGUIhSUfebZX9zIVUMEb6HPhaNX7latBjOPD
	 JEjJeX0gX+CCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C650BC001DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 20:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168954066880.32688.11618031896803264259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160fa8be98dfb73de3253882cbffa01e671901f4e5669b53ab9ca3ec287dbd99
Date: Sun, 16 Jul 2023 20:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689540668
