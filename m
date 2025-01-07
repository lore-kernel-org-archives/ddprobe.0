Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA1218641
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736232954; cv=none; b=VjK9iMDmKKz5ByvXQzLhs3yNZlgKSj+A9bmSpNllqwau35rHtYCIlinQA0se1sTAzIbuDsXYYYxLo0T6eX/Qc+Zznr5XhvpRc5cWvSh9PjGXnD+2692bBpYATT7r8LAJam5f70ER0wJIs3sMhddGHsdJcmKHOsXkgxTNQBVW7B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736232954; c=relaxed/simple;
	bh=w2rSMSX+LyxH8oAW3xCq1ZGt58uImfwZvPFVPnOHlVk=;
	h=To:Subject:From:Message-Id:Date; b=bcwSagwrbmgmoQ2cg80ZLk7pKZngoyiUt4hXiXMHpixMfempqH0wyq7ClJYtZRLlvahD7lQg8xgeIw/nfwN6VGmilJtAPK6gYWYJ0obuLWNOzIL/nZ03OWKfj5bUKfp2XiW1NZ6MRfBIaIdeHV38fOODx1YmeBjrZFFyn9LDAhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB+YKOPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB+YKOPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD23BC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736232953;
	bh=w2rSMSX+LyxH8oAW3xCq1ZGt58uImfwZvPFVPnOHlVk=;
	h=To:Subject:From:Date:From;
	b=ZB+YKOPoJ0lhrRAxys/4IaIvKq2kHsz19N46LJDSk2fLMfFaCnPPy063DbE/JRKZ7
	 p2Ji/NaKTndIh7d76HGOR2Ctpv+b3s/WaiC5RIm+6Or+dy42A2nKVnW9QkMCVRQTFD
	 muiG+RLL0e6KzqrwOjOKFmblNoTFGO7w79xENCA2eRY8N3rCj48rDypbOdXROUNb2o
	 2ND5BMpf9yIJf5ASDg+ukvHfsicF0JtwmOhtObjqdAi+8pNJvvB3VP+g2LuKO3u2RR
	 +9YlGg9KAetYYv0aGzOZtoKxbgtkydlmoH9tkJJqT525S7U4Ur5vbYNXfMLX39do23
	 EF+bP63s2bHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DEFE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623295372.4723.18365189745231783029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff8e00565eca778f6f7c8b73338b6b3e8d4352a1ba045478eefb690fe2c59f6
Date: Tue, 07 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736232953
