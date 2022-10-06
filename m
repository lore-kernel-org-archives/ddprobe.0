Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD671654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672B2C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665043853;
	bh=znF4SzzI9e+uQfb/Okkl2VQUsf5tNxh23fml8GXrVdQ=;
	h=To:Subject:From:Date:From;
	b=K2Cdd8ZDb32gRElPtT4ok5idvc/wgx6EU4qSlsyOkMa3IPvD/gbGyT26ZwnL0EjZk
	 m266sIcIZ1McFNORRgYZoyBFJY1gQcuqUjnGATcIaChhQaAd2jxldVB+KxLOgbNAOx
	 onOKMCF0tj354EfRBUt37Tk9aVSZL9vJ+mtAUsROuafpjCDzI7HcHmns/Mn6+zJVWT
	 RaEueyT1CIMmtY5HKOP3LLGxDqIBK416uaaq88AfTPjAy0jnOpxsPKCqlVPtjs+Hym
	 iTl73EFW28vD5ZtLOWNNOrJbZl32aEi4TAB2Yjfki4DNUn4bUMBNd9vvei/jsQ5rQE
	 HPk0EgeDkCy0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50459C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504385332.11999.14845194308821751191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a8580d5b35e50a939af6b801ee33ec72e09a4380c9010b4d48323cb2694a08
Date: Thu, 06 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665043853
