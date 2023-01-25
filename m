Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5F64C83
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1794C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674681186;
	bh=AxRDA1QZaZMe8fA2pd2QgZaZsoPmQ3WMyJjUZjW8SiQ=;
	h=To:Subject:From:Date:From;
	b=TojEtQgHievgVUiKFvnHiPkyaZIsSfQIQ2tV5uRgwP3JneA4kumgbxminMYWuLv7X
	 /eBfYE40aY6T0SFALtmYrrw7ch74khzkxTkPfA5rsZH53GdN+lAlFKlg3VYy6aJxag
	 kqx4uFE74I2GvMQ94i3FQGGvVW4us5vzJXHx0Hu+EYASWsYxv87Su1ZEAmSZo0tMUG
	 Uob9cPDA2rWsPnnSOunqMuZDWdKWPuRrQxKaqI7G38JyojtuYheSIrgxhhnUTwEtLN
	 5lUQdoT8pP1xxmwLTg7iN5jHTV1+OF1F36ECfMeF3jQ+QTaeeOYriMV/AKSJSRXg3c
	 ACtXrYjDmEvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44DEC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 21:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167468118584.16554.10830019885401202827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e04e91f4f23979c9ec055cd5238a8fb702bb5daf9755ad5bd8c1dbcd2cd3c0
Date: Wed, 25 Jan 2023 21:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674681185
