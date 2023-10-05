Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF23B7F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1IW59MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCF4C433B7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696488368;
	bh=kH8SCae3SrIq0g73Z4nJbd2J456lSkeJ07yOmaHaJ2E=;
	h=To:Subject:From:Date:From;
	b=Z1IW59MMANCCSYJ+9RsS7j2Na2Xunf18s13Jv9+W5duoLJYoPRkeKP7T0CPgCNEXV
	 OvuxtF/EXrXk5tJIXTD8LlDXDf2tvx55PpNBLB49DSEZSfyB7npffP70/u6VY5vbTQ
	 H6VAaPSrVuzNpQQ9oG26BbewvaVd9OafgyBrZfNd9EuxogV1p761u1esVLwL2yBfKu
	 yFRGV98xTj32ngHdaB6CSi05tZI/U7SJ2GkzqlgfwMYlOm+k/RY9MP2QjlTfIn8fnm
	 2S7vluYnVcImoU09gUwkA8+jGIaTcrRfK6wC68uelTo4tHahxLcMVkUVhc8kqaIvkI
	 JLflVh/sR/GFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B832CE7B61F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169648836874.22973.16667412020876531503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f9194a78deac195c11ea0a865780fed979e884722f4b8a739c0032e185809d
Date: Thu, 05 Oct 2023 06:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696488368
