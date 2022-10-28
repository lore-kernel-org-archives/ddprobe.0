Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45411FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700BAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666948254;
	bh=qupktGyw3q2Y3tFyWjX3zQxAmsV9cajPtq7qdJmkXJs=;
	h=To:Subject:From:Date:From;
	b=EOVUVsb9gNu8SNSVzaiOPlBWel6jV3anDgH4a3/I1K87FxU74NM2WqKnDNDXZEiVy
	 mxgXuWRYIIUzHdYWVkrl3t+tK7vKJjrX0gaflBZPsOsg8/czdxCJ5aw/Ek500M4RbM
	 EGRnHQVOMHYqHPcbIQg1R+bkSXoYQ6Y7L6V+81CAYFAMB0vqsnh0hp641KeyBS0lEB
	 MgleFWjFqw6XAyRRa2xNinDICJGngp+6jDwUdw50Jqoy3uo+bA4xGkS/TgDBhyULTN
	 4HkpOps1nI5qeT+gchUSjSZjZnOili4CTcQsM+xqO2EybcjfEaGyXA3Hqbuow5rVfQ
	 tU9BrxfX+2QTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D00C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694825435.23472.16249759093732736146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1be84110666458dce33be97294d1fb163841859d8115bc7eb0145b95cf84f39
Date: Fri, 28 Oct 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666948254
