Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C168F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F7BDC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672780887;
	bh=rsgsbB05hNdli4hCDIuaBn0/HuJMl47zy7gqflo/g0o=;
	h=To:Subject:From:Date:From;
	b=C5XAhbqoJ2Sg/v6K5SZNYNS/2F0KItRRrlW8ubJPx7A+iyIOC/beGC5ELzYvT8VYT
	 +f7FY7FVvK23eD0JkSjg8j1we8RHvTirpa5SOmd1nYzGq6pCCuGGLFFjE1iogWxoNF
	 sxFHix5QOL4qRY0Zas03hdBWYk3CdbrvlAiDAhKwaaKPS0KNgI1pjFL956eZs7ZNTH
	 EST33Cr+DiIydEx1l+sYahhOBgAAZ8h8wWaTQ7z8VtAXJle7uAbIcdu3W9dcpI2Ju0
	 W/2XE3Fp+/m5/cV2b/XbfoFq+v9KJhco8yKa4Z5IcGHUT1+Cbg4nDSeZhhVicIdfrO
	 1Uu40oUKjXeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74012C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278088746.28221.9855657614096177908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4808a73fd57445f02fd7d95fbe3a5a681b52ef556c0f0fb5fe71988de1d1fdf2
Date: Tue, 03 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672780887
