Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C214F7E36
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B29C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663716653;
	bh=NPyIx6o+mBnJyzS/ekuu9sLhhTRfnEuV8N1QdXSFUlg=;
	h=To:Subject:From:Date:From;
	b=dKrIzTbmc84bKAR8SrW4DxRrtbudw9Za72lNT0YEmC6A12LbNn9IM9lMNHjVtUnUj
	 AyYf4W8sXIU2u3Q26IaN7ECtEoCKt+fUdXayM0bJFqPmB1LF6RoeSQ8J3dn+Z0WT+e
	 hLrnVMPnUNpyTa0D91IgmtcanQJMmn8XftSCFlBoj4pQ6wqV3akYsVY0OJwTQ/f+DO
	 IBT4X56zMGp8uk4BcoX2CA3MhHRMLIlrfATfnzyTzgD7LdzhJJ8GafB2jIzaMcl0QO
	 FIpY0a4lUvKthj41mkt5Nb9JQny4vZ7059gD0erXWYd3AMQ/YZvHn50aQoKwPjCdA4
	 zeGaRiyuJXmhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6A5C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371665337.24223.6054075521230156587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecebad1b1556706a1f4cd707073ef5a4849c2864351339541c5f24e8cefbce88
Date: Tue, 20 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663716653
