Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B7B5692
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0480C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691769188;
	bh=8iThCHtXPMRxvHdij3FD4S9PhU7eKULyg+U+StDdvAM=;
	h=To:Subject:From:Date:From;
	b=u/E0TEssWMT/xO+y7v/yic+Mtg20ZqwSR2OeZwsovdgwRT5mu81iHIbBEW08qfMGt
	 QhK8JV868KHGschn93LG+g/KxG7takB4S/o/2CTb17DakdRw4RfIttLc5jPNXEX92e
	 xXyE0D7Ouq+obcFrnXPMUPHNR0E7BcQqXpjhFZKkvs4mmkLCbdYKYHrcXZc5H8j/Ru
	 bjD8VzFL/9iwRB7DUJHjVC5UjwP/RcuN95Igayl8eca43+r/4YW0qnaNmmyrD8lczd
	 H1gJ7AspLiGVhNFja/tLZfUl0VAwtk9hrKRe7HFtOU+hDj3HFVQXf0yQ4cdXqha/It
	 d/IwH+rUDhzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65C4EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176918866.19928.7780234554501674933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702cccc5c1bf80dff529b620ff8b060553176f8a947bfe0411c953de6f0dbc8d
Date: Fri, 11 Aug 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691769188
