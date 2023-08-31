Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2A09453
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A47C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693482248;
	bh=PVC6feIOXrCM9bxedjueAc8wTfH9WpCUyaWT7bh8iVg=;
	h=To:Subject:From:Date:From;
	b=EL5+/Dbr4SQ9Yxtqy70oGqFolsMDIXNRDqXpldG+QsCZM+NOaRBA/+mKcgxjoRb0l
	 /OJaex+YYKquO3Qcy3/Hrxwc/FKeY1sPsQyuIavdX+6cRajXcCBN+uxZs081J2B6tr
	 Rb9tBp2G7GCXukhdZZih+UgadtFkLtZL6tBeBcBBq8l7LN/r3tCc1KIejO6ZBp4lad
	 7w7f0wo/6VAs1XD1B59g27sD/IrLtPtW3fnOSbHLX5yenHvZLQCOVGbYUeNFDaoCba
	 J48ILwcfftW+1F25p4kiKFFm86xiKFj1mLr+BhcO1WrYeeq8WcoAb/0udu9blD4fX3
	 MkhrXfdMh+zvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC6C83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169348224879.9782.602929494847879651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aceb9ef7ff09b3af59557979f5bb69f07882dd827ac6b42dc6d34d18bc40133
Date: Thu, 31 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693482248
