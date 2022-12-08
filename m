Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE77B657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D758C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670482254;
	bh=nz3lXp6Z6Ag6vJ/oBLffv2n4A98cC0xa2pm0fy3MLA4=;
	h=To:Subject:From:Date:From;
	b=sZ4C/t52AZvQlF/f1m7aLIRLeHuATdUlZDp7TGQ5SH6txlWuybunSI5GrGoFqXR2I
	 wqYsUe1njxIZf+TrcZZ7fx1+cXfd+kGk/BtKSrqDf/Vw8PwqYB1IHpAi/alXxL6B4Y
	 l0P2tT0BOgp4i3878Qu9EeKxmzosuRenqcQ/CFELluHso6FXg1ACrNs5OX2a/TGSSK
	 frjNdP6wBIhByUAcu3BROvJ9VevVlJ6CSK+vKfJGFZ2daiQVBjzr9rW+32M83mI701
	 D01YCK9X1cGoBPoaEgx8Y9gFC0XDgz7oLdrBEz67di5cglb3k25wC02PcZgz7fnif1
	 dOQuZrABqaf3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52860C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048225432.28617.6241758712364126095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c130034de7fb5f62342853cdd24cfbbc0451a4821bcb8debeaa3d8f1666face
Date: Thu, 08 Dec 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670482254
