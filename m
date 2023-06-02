Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5C815BF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12ED4C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685714226;
	bh=mm5QM+a/EuDKJu8q1v0btcZBR+K/Gz+6lCFJLK9V4+o=;
	h=To:Subject:From:Date:From;
	b=VWbH/9VltwGBtFHRmYh3zroGdIVQbLPXeNlCxgOtDORq+sfBqmKDxIpDJtAJtvZKv
	 fGeqz+CfK8gj1EnqjrgRbcvDsra6ouTGOl5AlZtO52cI/YYKLkMEnsj31UHgnFRdSN
	 w2Qy909Bgf9KQZlRS1gKhWTVH943nWYjNm7mgXKo0C/txVrsmhrt5BrYHYQUokN/EL
	 /XlGZiqlCx4qmZCbWFNsgfkTbRpbeFvxRdZjz4iHlcMGT52od4IhyEw0YlssU8CbQw
	 AGbG1CVjtXEcYQWBUG02iUqxoD95GecVJGzm1T3o4zSPVk2Cfu57nd7GVfj+xv6emK
	 Bcu9zwyn/AgLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE50EC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571422596.28611.4661745957862929917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a535344867aa03ff02aaff1440d90e4ff035798d8924ec18c277c4b743ebe1b
Date: Fri, 02 Jun 2023 13:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685714225
