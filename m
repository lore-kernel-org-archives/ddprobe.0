Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78044699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBD3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666026053;
	bh=9Z+ZORfgxN/DUDKAm6Y4180RbJrmAwI3uY1p5OeXL5I=;
	h=To:Subject:From:Date:From;
	b=ZuNwa4URyzPiWN8vs/xgj7Wxi2sn8hjTgQOBry6ILxBPqDQQU8zMJmyfTZwCElT1k
	 QmaIhwJOkT4MRzPnkAWpIelnaNQfYB8PY+E85yZM+r56Bu0Gc4qdIiFVmh7EWEPnC7
	 8jbQ35QIxUop9Z8IelngzGw4tes2Yjo0cTqj80T/7N4eBE1mzSH8yr9Z5+CFVR1G0b
	 D4ZKbGX+g0g8OMB4jFlG1IIz//c+uE6DhJ+LYDgcYGzYY2Klsc+1V/CbaAfNqkan8k
	 KALvdjp9+hrBxhI909xSucgHPZ5opTVjJTDgYGmnuD8twVVNaI3QAaibgO83gdtliw
	 KXXK7vBcN/KJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE59C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602605336.10277.4778216520272980633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa5f3adf25c05839863c1cabb30f80a13ae68e651d47ee8c14e819c912b4ef6
Date: Mon, 17 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666026053
