Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54311860
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71325C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666852854;
	bh=S29rgXAKbiaywkSDVW1GeLGIvnXuDX7wPpU5tI/iA6M=;
	h=To:Subject:From:Date:From;
	b=Pk7bNhP+paJdAEw4AShjGZ0LuDcAIk1+5ZpW/s1AAGgxq3rDj8yhhVPpUUHorwpFq
	 QQqR5ohV3LQhW3rAy5wgKsH1Wf/S/nmWVGH7IRMumMjv0225J0igCrlgabBSoPt8RN
	 JMNEzvKaKWlH7kGa6je3ccpsoNbTxATXQDD+/t2VCR5/neyXMjDxECCopdKJmK5zO5
	 JMLXe46Q/F3OcNNUukTaUC74TUGqsFGKyeH9PQqy31rDFGbFNF0hSy3pVBVIFo0168
	 E8/7HALOiQZmCpUjFyNXiNRyWAqfXFBtHg2qXOmTYcCuXiy6nhBq0bVVAVmmwx4R7p
	 BXuPGOYtdLhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C0C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166685285433.24785.12787871091339762089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e176644dc669b9777152064570cb45325bfa9bc314dd3d3e0bf7d4f5c6485754
Date: Thu, 27 Oct 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666852854
