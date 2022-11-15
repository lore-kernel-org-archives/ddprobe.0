Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C448E8AAD
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CE6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668540654;
	bh=Pq8dsI0KSTSrCizRGbbQX7I8sKUVa9d0pbjIim1fHzk=;
	h=To:Subject:From:Date:From;
	b=GZLHzrOLfHQV9ySqJJ72UuTIANT9mz3k2xAvsZLZkXDPdDRU7cRl5U9Exvfam/Tr1
	 BP3P5zSbsKS3P/CzpUURmzRcuJ8KP1s8FbGnszz7ofjg9gKQHrzZXuem+3Qv3dQgM1
	 vvD/B+y2Dmb60VQuZYtU5HlkBUFbCOP/Wsmyw+S7RVz99Mxk0OSwfjm+W3QZL2oK+Y
	 57K2OgCj5NeCGB7zUyNhRRVHDS5xF0DZ6x3lsoadkYJvRzcs8uXidOpN9sm0hv7oyD
	 Jx2wDgrPr40nRmBCE/Jr1apcdBlzZl+GeklVZe5MRduGsua7xAwOmAlWjw4m/DGsBs
	 /EYSl6AvyeT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C14C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854065433.26362.9126870687365796994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edbc3a09c841f1f2f93eea502c9246a3b3239394267526c0da78cedce1c2ca2
Date: Tue, 15 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668540654
