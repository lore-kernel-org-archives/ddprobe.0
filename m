Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42F57F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697C1C433B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662928853;
	bh=cKYAiN6gSeuHiVI6ouUz4RsMJn0BchIfqSY0uFiwC4s=;
	h=To:Subject:From:Date:From;
	b=A6uXQke7n6U790awbrvsHfzDjH68HOW/FyxaheczsmHewFHZiHsNTqz0I6c0w3mF7
	 Rk5V5t8LTsYXWwsY92Mocz9PNikQa8yv1OObtAjxAr4bld/oknwNGZihlAQeqxCTYL
	 nfHmJu2RATwCLKjHI2zBk30kA0LiESJhLD1v1GiQtAZ+hos+8IxU+L6dXDgxm0siWr
	 ytIEILQvIrmo2/vLU5xVUxc7dkDycBppw1jMCPjktTKQOJgfURDxopbxxQTs6dmDa4
	 55KDREX1rgNlXAvjNsz9YhwiUcKumDCIjRy7g9WHlmM2W/vMh/1kvNEv+79WEk6DQg
	 ozQu7MCNff8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E361ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166292885331.22907.4489302583912742833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f2979dda3eb4f22e2ab6753ed7b3e7e749c89f33ce5928326a5b1ff3271769
Date: Sun, 11 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662928853
