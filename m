Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B6D37A
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5640C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682041625;
	bh=5ycQV/lr9yodslkjgfXIftACL9J2t11PVbfzlFpo3RY=;
	h=To:Subject:From:Date:From;
	b=CMkFrArw23JRLQxa+cPPRMz6Df+C+IDB1Yjtd/Kl/59MIyJQV/NSXkNI4FPt5E2/u
	 0gTu8dpJiVUDGeL/6xOWJUgHuivYfte79j7vzpLRyc8GL6kY5+nMIKJswwKxB2DyOj
	 dAJBMBTjqwy5i3qT8sKbkiKeK89xHNDhJPP9V1Fmwa3j/N8q0qj2FKmiVKknAwe3Hk
	 ZzmdBnf7+1uDe5IAEdFg8UEtWzxp7stvAYLUQNEROgrokpqHa7nlfu1fC65ye/q0Dp
	 IrbUjGHCCWijnReTKOAzGIG/b/dylp2f1b8qauhA1YVlDhwEeHkY7hYmO5uXxGScHz
	 CSrIF/o1dn61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE720C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 01:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204162577.17300.3923617918251543465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facf4d772ff0be320d4c6efe3be2dbde8bf976518c5ea53c1aba6ce331842491
Date: Fri, 21 Apr 2023 01:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682041625
