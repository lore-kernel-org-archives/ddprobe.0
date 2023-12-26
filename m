Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26BDEAF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sre+GslD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 842A9C4339A
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703631496;
	bh=0txTOY/xYkYXKwbWTo/pXZ/XukCJa6P4OZS+YUS6zEw=;
	h=To:Subject:From:Date:From;
	b=Sre+GslD8Hxt+jtJUNFn2/7ECzblrdt9q5JCKAA90KIwxcS00bLjMj+PbMzng/hqn
	 l/TDNAbrZhH+iq+GGUQuynFXRXqT0OEm7M81YMyZtmQsTjrutBYb+qTHiaofavtM2O
	 7pRf4XDOVsl0gf6qJdnW3eTN+xtQ4gabrdoAn12iAxGc/fbZuwx01cixFP+wu9aJOE
	 Z3GBElFeRQoyyCJrECCY//8tqrzog3wRtWZnz6lmznsE2S73J5NsVFdjB3HkAwE7kk
	 PD1rBr1OU5oLv5GMyiELTmXjPZh8d30eBryDwwLFt0lC4RXdv5VIpy9D3i8e0dy2/1
	 KPDVEBr7JJixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACCCC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363149642.20110.4208707805348839729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24015fc3ef29d1dd20dd54d0e56c86dc31f95f1bd53c65b7b0aed4022fd152f
Date: Tue, 26 Dec 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703631496
