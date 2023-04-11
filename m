Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D828EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2F0C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681198325;
	bh=7eqOVXt9YmvCJxKvdeyrL9IegBSuMxvvO8X3dnAKqi0=;
	h=To:Subject:From:Date:From;
	b=eOe90LEMpynbH93KD/ClohFBkuMC19aOkdWFpvIMRZvcqEFo3ZrNkpEF9eCtAKS+h
	 Lisy9oGiC0+7bmPQAbdGZtLBD+yuiVwgN011Fujnh2WjwJkvpc34C2nRRUw7eui6Bv
	 8W6M84eYmLGjjd4sERBNS1B7uL9Q/T3tYkmZwaH6/vP/ULULpdX7FfsjYHyk4z/0eE
	 ZsOgERZzu0yn0nhvu7Y7TlWB8DzUSZo5k17w6M3xeFStjPCi6L7UIvkMr+yv4ALkmt
	 7H7nO4fL0zoD2Hy3wlsB6sy4vdEQdShAtoHeFLQZ6XN7TEGbXCIPTDFs+neVreUs31
	 vb9xiEVHNZ9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0481C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 07:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168119832577.24038.14248292935737148358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d512ffa2c2be76c267cf1374eace4a64c67cb489312fd0af5001c9bff005864
Date: Tue, 11 Apr 2023 07:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681198325
