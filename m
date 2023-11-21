Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7FA14A9D
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqO1a8yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D282C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700536096;
	bh=RPE+1aEn1bKh72tbNxyI1jpB/NfWz9Ci3y5suZGEd14=;
	h=To:Subject:From:Date:From;
	b=YqO1a8yCCXdFYK7hjXE9gB9L8Kx60F0F4vktsCQx8OaX+2Fn1Y3ngLLACqZwCAthJ
	 AMVPDZx6l6qVDo1P2C0cs+WJDbnHw+t+23PN2MM12S2EpAtfMVW8Zp8u+sxwfQaExS
	 cYjtLTw4U4KAb30qH4/efktK1HWeYawW6dyC/7tQfc7wsyrhMsyZuJMJ3B5v8/MuIx
	 9hrgJK0FtCE4he3tFdHr22HTUMXYCt1zz+qgO0i8o9kTnJ0kZlZNvQq+Qzb1TzKqfj
	 BhKDd4xfV8pvOWDLeVO/fV4eVrATWrvWBK51WdUKwIpg0C2Q7GGEKXWj2e3m0unAxw
	 2q8aS05xh7SOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C620C54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170053609637.24184.8162263218137367105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba279b87c8e41b19991b0fe6ea056baca1efcf84f314dc42f5929468c03cc2a
Date: Tue, 21 Nov 2023 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700536096
