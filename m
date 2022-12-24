Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B93D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB09C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671912087;
	bh=8GzL2Ko29XZRBAJHU/qxThxqzeA0JBGENLVNILVzBSA=;
	h=To:Subject:From:Date:From;
	b=CFKmU9L430QUGR1oZOQ22sGmkKfY01vrykKJGSyb+7xFi/OfBl+I60rc4AzA56rFb
	 Us44kJMB/fDFtYJW2d8CPX89Tsnd/wb0Gbn/SB6ZGlXeUoIRwbAxsQPJgKbM/DMPbh
	 Obe09W7CsJKOyX+Xfqdf2QAG6QN+qOk+lvOtJR6Isjru5lmim3dKJbfHdN5F7DqtPp
	 y3iI6wCE2VkLBHyHiEfcZ1j6fGZ+h070Wjup5ZnGGAAry9XYYHUTdxBEu/xxE3z5Sy
	 XcVGua1vrayipsF2Zs4ftIGpEIC3x+f8mxHk7R3MqjVH8JHWzYx+1ADgZqa6e7Nq+u
	 954K64MoegBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D02C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191208749.8350.18173376164078938244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f0e2fe281c083ba1f2f056b2118629e51cb2bf8fa79a9a9f2443b551609ed2
Date: Sat, 24 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671912087
