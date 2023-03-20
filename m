Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D2C882D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB6FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679356026;
	bh=EjvHCt5vOVZUa/eoxw+AxQbEmok3tlytioNkXUAeYiE=;
	h=To:Subject:From:Date:From;
	b=rS6vx9TwO1AwkHydG+aN8I0Q/vs2N43c8rlzgltbBs6uOq67A79bu8GiYuLaoF/mZ
	 gGWW2+G4DfkvwgjL4wuAB5rGFJOxs/MTteYeCdyj3abCwTI6yh/g7nnCzYmvNsJfDm
	 uOfVdyezfoWVGaK/iiiHNRD+pmzRQxDbtGoWRMoK0MsMhZRv9CL/bgUq7uKsNvjj7v
	 I83mH58REGNQKMt1siXhtQB5lY4TfYy2jqBnQyYRPsKLYKZR+xs8n6AFfnCPAnMfhG
	 FG3wrT5CDAi4p0wMOHF8Kqr2em0uCJFm2lVubvyPkItIq0SvG5W5z+6RjKjqSRypr1
	 UjnGlzzDkvEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAADEC6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935602582.24727.4495512140462771538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892155dcba3a1e696d214dc7d0cc74378867fcd5566d7486fb81b3049313305d
Date: Mon, 20 Mar 2023 23:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679356025
