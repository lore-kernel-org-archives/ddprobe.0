Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F9A15AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFA3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665453053;
	bh=poZf1kXEj/fgpWhIydQQ1Xer1Q2c7OCgB3ng4/Jh41E=;
	h=To:Subject:From:Date:From;
	b=YIC9I1yPHXVHSj0tHEl3RHRg+UF+b6ul5nWsPYTYHpY9YPDTz/NaczPZeQASRLvrj
	 yXONctwBFTC92GpAmynbzAlOfow3SswYP5qWhmb8O3FI/8lpB9GxfMOQCxYVeyxRCW
	 KA1Kgsc18Kjsp5ygSi4gmLb6mMf9qHvgJXH6VVFHu6GCY4wFQ074EHfRleroAriHpy
	 50o0yHj34SH0LnBKhwNqFJ4m6+2t+SpTkZnz2NxBVkZlTKri69X3/5wJ0uXO9qZLPn
	 4ItFQL9tyvxRt9dnDQw3Dj/hl4lqVrDrRNpG8kI3J01oT27jwX06RZFmSSmGIaGwL+
	 HwppoIrQlbYAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522F6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545305332.31697.1319898604772408657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e611385830a83eb0eb4b2f6d776cfc6f5487c3a7e514f12f9cfe132702d4b6f9
Date: Tue, 11 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665453053
