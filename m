Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052FF5B5AB
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyQIyyR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A09EC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702384696;
	bh=J1/gC3EWfF+Jk9SFe/kBcxNmoaCBIeot64PEvY8irwU=;
	h=To:Subject:From:Date:From;
	b=AyQIyyR1xgfL/wwEe6kXxadKy8ovF0ZOZOInyVlBcb/ToITebksbZskhVg5KV/fIz
	 1RWOTOFoAB4izqP5UOMVV1i+IvwzwQEjUwHxMBDnAiAodMDJ3zf8BYGh3N6TOlknjh
	 o2hrrbcrFqs08WhP2TKgYKRJVLJ0MxY/TLd4Xu+ikRmPOay1S5JLcffggRVNkmI6eD
	 OJ8ljIDaJWjEOtn0errH2XnJbnRbpBp+z68bycYQ8NfGYItIGsx/xXUp1iwnI5ClF/
	 INqOV6rwB3yMt+S03S7tXRKjvd2xoc3Sv2OyIU/1SnlCT2MGUjJqvxrWCWUhpNXmPd
	 czHMp3FSvts2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D577C4167D
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170238469637.28938.4268254254558253556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828a90b4fd366f4bdf3206516188c5e56a15ae0146865794cb3b57d446fd0b96
Date: Tue, 12 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702384696
