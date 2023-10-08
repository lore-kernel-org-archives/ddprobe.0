Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83385210D
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUo8p60T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10CCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696756628;
	bh=o+qWVa8soLVa0wPiYKPWGcJofxiPg0UpbUFqKhk3Mm0=;
	h=To:Subject:From:Date:From;
	b=GUo8p60TTkWvfju8BY9OT6YNoXIg7zwVwLBdJCOVw5e0UPec/Ts347v4hEIhigOSL
	 yQWlE0Bijy/+IzsMYJfO30EveY1NYGN7BuJWJwifjwrUOkf8rq43ADfR+S1e9qbVOl
	 yM6FCFgyJozYnWQDRsO79UZ4ZfZDcP+xSZjPyQOf1341xHY8Ngb8lewO6BPAwAJ3Ws
	 6wIpjHTFs4fWlQkab+je090EyMqn2VIipnjYBXr697yodQyQ4Lx6xeMQKqfNOF381x
	 TH+jWCaW3ubSNf3adJTV1fq58McRB4tkagtyvFtVmlyN99kyWknifOOP9Zk/9gHkQa
	 ddFJ9tKkaK+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B119AE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675662869.25244.8808375504337847812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8be667ec2724620660f9690f8d4d8e8f34733f7d18d0e82666126fae364780
Date: Sun, 08 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696756628
