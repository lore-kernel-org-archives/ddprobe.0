Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6C93C37A3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781516794; cv=none; b=S+Mviprg2Puh7XuAt3rtscL3GgdUjzbITIorrWuwKAAeAQoXGJlJtEiwmb1zejQMHk6EyuX/thnV0sLPF2Y+nbKaRtnK3Rur3ElBL4jjJ9NYeoyx49LyMq7cOGD8SfgqxZqebHtB/v+Ue2RRgd5FNMnlVXOPH+D0S6SfJIrjuoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781516794; c=relaxed/simple;
	bh=aXVwwhyUVxzwXa339sK5t5Qi2LEvC2ai90Y8NNmjfF8=;
	h=To:Subject:From:Message-Id:Date; b=tCPjN10QBA+WkV0rRMeQD0ma1xWuQC08JEKhFeopgAj1t7EkmDSD8vnAgf57fZ6ulns0tecxekVp8YWxOXgz8qNtun/OHX5z0r1fKZKlDFoB9ejUJfUWqKhfpNdNVMvUzuKQ56HDaBqe64hX5+StOS8MGqqhGL5on6qYJIuJcQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8iis0k0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8iis0k0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3519C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781516793;
	bh=aXVwwhyUVxzwXa339sK5t5Qi2LEvC2ai90Y8NNmjfF8=;
	h=To:Subject:From:Date:From;
	b=t8iis0k0DOzk7Ih26HEqbUEfxDf4+XcfOlBGvL7L0kzs9emsXsJAwyKwUnI0xzGzU
	 9cJ0hCp+dVDW4qbRHKEW47b90snq1uYkdymY4pO5zZ/RQKnHXHtONTATxfrNhvVtAn
	 q59aXOBWLcqdL2/jw5qzCSTYkyPOX/yBrHbCuCEyGC+gOX22T8f7OAtYEoXPr0wHbf
	 e8pSAqLO2FZGfpL8GRBceJGBsIXTRN6oTQs2YcN5XS0yuOHbflOtbpZt+Ju1Kc9Rcu
	 d0mZPvYgFE4rverWn/cCOuX1nMMeo8+UK5DbA6/9d9pWICiS+DN4edRNnw1DhL5R1X
	 pq9+60M1vi2ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5981CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151679373.21463.15062993459590606518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32cb1444e7094006daa7f712ca01825e30aa06503b5417106d9285139ea73eb6
Date: Mon, 15 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781516793
