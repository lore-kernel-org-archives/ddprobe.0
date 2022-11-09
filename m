Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED3C8F72
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767DDC433B5
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667992254;
	bh=XOCMtW+DFD0KC/fd3Lq1b6rZow3ezMttfByELPY+QLE=;
	h=To:Subject:From:Date:From;
	b=uKWPSt/YujT/dBajW1gAFFaM7+Cv7ephtVd0oi+9GozgnM8C1o6EczfSrXXz6X0ff
	 z0RNJoQI8QWp7g4VrsO8PQUIBLFvrZaIfYat3lI/QExWo9DVAi0ZbJLInLxYfBzhvE
	 eCkrvu/UjmNp9vwmEnDKN4MDqZyDG5BotAKk/YWhWDukiHJFuKI/Kj7yka6N0rersh
	 VnQJuC+KQs1LvjZGayTv24VogMmqhh53IjvXqOPbyLRPhKqQNyzwcMIxbiQHnFOVlv
	 gF7G1uqtpeJYcmypQGU+N62aMEq3NuKVYzSpdEdPQHFHB5qpLPPdyRn05pIb8ePoqJ
	 x4arEzTe5Iz5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E774C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799225437.31168.11976237089990412746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3aeef80a21ce458319b306161e4046f13ec880cae0c8ed3040496967af6cd8
Date: Wed, 09 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667992254
