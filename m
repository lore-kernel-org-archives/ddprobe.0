Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378ED8832
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1A4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681759745;
	bh=IGBZrXKkUoT+btqQ+985RFxhzTh38I/JjBVXorA7lAw=;
	h=To:Subject:From:Date:From;
	b=YwbXGJo0KmGZqinlJdxQqTIQAm5R0glZIBvgvQHrNbutJBOzABHThk/PjLV5/5HHT
	 zP0icKkfGEaYvjRG6b4GnPn08v2LvCFqUq4takcXzgcKEvluTYuIWONZEqfC6b1kYi
	 w9aG3vAUvPQ675XWLC4mYs8r5a/CNigQnBZXvaqjXEnnKQlGo6S2GFZXZmyqfdjXbp
	 PR4Pn06MaNNSwLbqHIROEIvVB33X4EIuyXIBNqBCFOVJuaKXLklIkIiyvxXO7Sfpzc
	 NyKMAOifsyaWLWW8PJArBnlmWgypSXcgeNsCnbw6+Bs1BiGJQAY3uBe+BvVIavit5b
	 d7SYbjzwfUrlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18C3C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 19:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175974577.9960.7449147688788315195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ad29261a07aa602af7dc6b43dda44534e372a383e5719d17541266332ca156
Date: Mon, 17 Apr 2023 19:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681759745
