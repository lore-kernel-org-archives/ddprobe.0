Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C83F255239
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747034394; cv=none; b=osQer54Zw8E+zFZIPEQYMVj+ISHjwzR2IyXgx6SYjqCU6T4cJXHTGbRQSOiFcAzS1k9cRNCYOLgsybqWfBTPOmAjeLUBUa4nvt5qPGuvgQPtrh+gI5uvYDaU5xCGbxg0BeKJeNkBdnrj06u9Eem+n4q+78NIJBVWG2n2CqhijCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747034394; c=relaxed/simple;
	bh=adaiZpI/H/3keuD2Y4n8Km43KBTTVGzEdpC8IU5mmsE=;
	h=To:Subject:From:Message-Id:Date; b=H/m/fOGXlHhqbhVO8f+AZAzubR4wqpD00OnVfYDB2hPwsZNrK2g60FnWHdprlQy0wjg2qgbKUvb7szJHNdOf9YLZ2H8/omBtVmvLJw7w5ooGgX+Ddef+cn6gdcx24cmSpL3yNrXldqhSHNvwDIemJv1XOC9JIwFnhTn2PBbP87E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIcf1vXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIcf1vXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED67C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747034393;
	bh=adaiZpI/H/3keuD2Y4n8Km43KBTTVGzEdpC8IU5mmsE=;
	h=To:Subject:From:Date:From;
	b=UIcf1vXKFy2SdJDYWOhyfvyy6Ud/q/AXqft/V1GjRMfq/Q/60iZkkNAUtiaXEHhx5
	 D0Kyzx0PNQ+098uEVzz+X5nOddDFZh/fkQl+jWCVn/Z4Lco1mpHjFQJ8mBtnKM+V1q
	 Eospk9yy3NRg5P38fJ+kBop9PGPH270R0MExZbgFkZN6LuKVeLDWtMvtwqt2aoly8n
	 GoTvJvSP1+0mdhspUJ2tEVxtyj1GQMa51g+G+mcRumhz8mMcjjSC6pG9UxQPbmMmdM
	 XiFqk4HGWIWO+laF0Jkqnf3f41cnZaMSPmD6EtgdSE7X+VjBfKvVIwBFIgOjN2bX9g
	 OZuUuHSzQbAnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FEC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703439357.31245.6976269269611775037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4bb9295be1e9a3f482891aebfd247f03832a5d70e53066d08636ec54bce3e1d
Date: Mon, 12 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747034393
