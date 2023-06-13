Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F889361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B4DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686634565;
	bh=rA/S0q1pDhFq7+biGOhnpYo5UGIa82739uzvg8eTGlw=;
	h=To:Subject:From:Date:From;
	b=DGNvUrPkYko+IjrCdSKNef+E1K8BovIZ2U3Fhzu+pgz+Vn2TmGj66AAZgd61+fu7B
	 2yrKmmNhiCesOk0vYKSFQb+YyVPmqhkGb94W4DVWJebQbydJEOd3S36sm5/DMkRarv
	 9EhRbqYIcw9rtFowGlZxGwpCsiEHdZjWKSDGIwNjmagy0ujCPili9IbFr4tAyGrKOm
	 EIvq96Dpi3ew+CAzdt4BMD72Q9xJlhd72eB8Q+qbkPDG/ZHVDA4uYI/Yz+adfzH8eJ
	 WGGae6wGK7r1pazMhuoiKGo69QTgn/5LVq99XHt7g2CZ3Bo3LT9zNek/tlMx6E+ErN
	 /S3I+sWxFsdvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ED9C88CB6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 05:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663456578.20257.4114686794589681843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40794962f05229e6576bc4690f502f8d623b69cf49f5b91d4df571e0a2e0cb2
Date: Tue, 13 Jun 2023 05:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686634565
