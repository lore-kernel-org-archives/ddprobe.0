Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8031371C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 17:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C986BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 17:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689354068;
	bh=64k10ZITVqUcA7M5/p3Ppft/EbAYlhzFxsAk64xDrAg=;
	h=To:Subject:From:Date:From;
	b=Vn8gwgWRAKDSuioOjMxJrvflXnIuS2Im6fNLWXpZiZ1YpQwfhCJajRc1xOjQqE1LM
	 BYUyQhSkfHbazFQafl78lEHkSABEKT3Jvg0+HPgrrLMzarat5OkTKMWEzcXT06cX4M
	 AcVclf0hSf7K3F/H56tfhsLHpDMbtNO8qMcoItRq48pQux0dI3C4aQodhRj6+FgeC4
	 1VPFMpGsrUTYkTNT55+SOMwoYx7fg+nMq6eW/ZvPzgf+kSOv82+N3ReIjhI6BJweVA
	 TJBgI/WUaJTB+EgwTs+aE6hfEssepxlJWgex6AiS2LNoTyqsF4lOgOoTF7Eys1Pxkf
	 n2326E5oqL2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD9EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 17:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935406869.23904.3733628203124680780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c4336505068831e17f7ed325729cf44fb498d0ca16f6edb20c994867bd9c21
Date: Fri, 14 Jul 2023 17:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689354068
