Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EB32F21
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9EDC4339C
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680280325;
	bh=zu7V53+7FbgL3mO7Ib3idUHAhOuqt6BCUQJ24/hNZTQ=;
	h=To:Subject:From:Date:From;
	b=uka/xTlfvum5e31q4rgWCY4oQGdi1uQOjYP6NsTUwQgqoYXbb7ECbvHFMFtf9hJy4
	 Yk8ODmDBfC+uSuBn9BpQwsZnK9toOL39Yn07sgGnESZOWXRQ3hkFXDyqSBVlFvtlj/
	 aOKBkk/PwGpBuk6n2l7Q7FqLmuNA8TS+ns5inzybc1k92wZuMYX7HpwUBYgY7yDtsC
	 7IUsRvp1K6wZaE3Hh1DvXRkQo+zuDw7Eq7EKn3NjQODs53xmYWV8KdjizKf968dYGe
	 spH5/66zsZ2CVffgTT7fymA+7yVztZtwPMx0n8zSc4vwGy/Dcm/IVZhtO+E/KvXT9s
	 60H6Gd6/T0SJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1378C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028032577.20811.12338150772669957455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1485616c8ee5969cf81471a908e94ddb9e903415f437073841c4932eb34232ae
Date: Fri, 31 Mar 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680280325
