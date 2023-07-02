Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6719C369
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B07C433C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688265848;
	bh=TvW1jwYSeP8iW/ylHKFvbebWsJTbyftJiAuT+iScnZI=;
	h=To:Subject:From:Date:From;
	b=YjIEds1owv6ryqrvC1071sxVLKtseFxeMSOEY7WXZrCeaurjzTGkf+jQYLpIo6+rM
	 C6TUA8Jvsc+Nh5HVbqI0KcVLri0+6sbzZhU0OlFo3yO6RkUT8WzHncRqPvxDkuFE/O
	 8iki1phXLtnAfq4yu2jnlTXy1K7BzrPwKjjNeaVEwsc8Ki7AJofh/3klOKOqe49k1k
	 HBNMkFViu4OK1LdcAbylG13/SHMDoBIv6fOy8U1O8gb1AMGwk865fbSgonLi4yP7Lv
	 X05/C4PQ6GJiXSkkoQTyhW9chZp3W1X9AzHE6rLDr7WnMUjm82QvkNmLGCjG/jsBn7
	 6TchFANrKYwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B891EEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826584871.2775.9677084646517955387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a0823e18166c6a4956291a758d9f445d5791ac02f990d3c5be60d4ae8f2085
Date: Sun, 02 Jul 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688265848
