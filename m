Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F491A593
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 13:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJBn+pm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B96C433CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696857428;
	bh=QvwYPRFIS4XP+6hviFIA20PaJ6dbNnTROLMOy+OB87I=;
	h=To:Subject:From:Date:From;
	b=PJBn+pm+EFvrLbGJwWqwM0vEILCBarudP4eMpkwIrLbbLjCss9HrdN/WkHDnL1/Vi
	 +23PSm7l0+zZ3PK6Z9AszfwiA6QqMkZxds7yHi/kBX8LsAjRk8+WBhJHYamEGjehGg
	 Owoi3oQvelhwwXNIBO3I6mJzm26Dgp4a/LV7+7eYq9rwtoY3gByTAIl/4QvgUyxXs+
	 1ZJPQJ7IcmngwwDE5rXC7nM4NfiCC6C03DXCWhLNeEDhv8vA1ZOseUpU0MZAJo5dM7
	 lyX9EhTe2QYnzWJAVjL7okk+BwvqMy7KrGMot5SZM4NhLiJjdhfI5FL5IqALftj98K
	 q03YBRYZ+OPTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A97E95A96
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169685742873.9633.1599081048003487421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b668849ee52296e1e8462b3045e209abda2b41307b5ddb838ece2a1cb7622ae
Date: Mon, 09 Oct 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696857428
