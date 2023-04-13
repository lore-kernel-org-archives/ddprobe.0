Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E467BA3B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD27DC4339B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681417745;
	bh=h36/uep9s/rCjS0X4SaXdGP5f9EFw5j0GXBxaZCrSNQ=;
	h=To:Subject:From:Date:From;
	b=dnHGPp0bXNd1jhmq7y2sH/uvzztaxWrEf15orOq1uAUgzTqAHFvw6VMixBjw31WSv
	 ZBkodRu5FHg0Ru7eGiJUWnGxKzDxtqb+vhn48CU4Wf42IkqKZ948UyJ8GEXB6v2YlY
	 oxs/ENYzAia0SBkxJFD6i2fU6th1RWjeJ0EDoSS3pEU1eppMb+rx8ttt3uRmSPTFNJ
	 9YVUKU22dcJs8Trw71+kmpn+ufGC+Xn545bk4s7QL4Fy3oZe30CgUcBcFGpk9Bz/2x
	 M24a9Cxgx6EPy+u3NjzEnuWz5yjSDdW8AWAKxscltRNPWtWuLx6KgZ7YCe4KuVBFPc
	 s2k1G3fGbLR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD928C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 20:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141774576.18521.16819922236275459506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3474feb0ef1bb5c95c680162a88cba001425fbd650ba4ffda3be244f55d7a5cd
Date: Thu, 13 Apr 2023 20:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681417745
