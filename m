Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F861E89C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767200034; cv=none; b=mXjhyvulN5FQeYeQPqvkB+CGZMcGq48s2mzd1IXnCgfzQUO/fLOEAgjy+4T3bVm2ryFdEGThBcTTVu1wZeKccc/s46XYlToeZJXeool6K0TqBc2qS6qe2S7hxOWIAvD+nJ6AJu0vhZM+x2hSYppojA+Fa+Wyhbg3IkONjyrLy3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767200034; c=relaxed/simple;
	bh=kx6YS/iJx7QnLagT/eRmIEfhIZU/07Gf9frlTG65xGQ=;
	h=To:Subject:From:Message-Id:Date; b=E69ACtpJkxJHH3eaE9ekaaQCQdvQCN0Y73kGVIE0klBE1EJs/U5uHc4sd4NPj3ISxDkQPqkdXadBr5mIAYVzGGK1fQW4X978RLj0R5GuQoMVtI23SlRRU5bDYfiUIThWU7dFTVQV1z4zltEhyo1QB9EhDvMgeTnzhMWpcPOcdGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ts2TwAy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ts2TwAy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1399C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767200033;
	bh=kx6YS/iJx7QnLagT/eRmIEfhIZU/07Gf9frlTG65xGQ=;
	h=To:Subject:From:Date:From;
	b=ts2TwAy6gJIip35BSC4lNAp9wuhjqVtFA0bUyzQ0S2VwWGMryx1vAjHJNJSsMAPCE
	 S2B16you4V2+UQX7W3e0z4GrEciHx46iGuYkWuojIIDL6t1C85f9KuyLHEUtRWlAbV
	 tTYyZx2t2LH0SYDW6tXI+7GnVTw3kFNAmGeI0eVnH0IG/gHI3xQertc+zRAi2IjKIh
	 +2zfc5HTVKlzHKAKHO7wIXC9/FtufPA0KNc6vp9YnSBOrC3UrTcUg9gXp9XDJK939P
	 UXGB162Ttv9DOXqDYRGvEzhsHdBAbHcV9KUze9wqXGCmUP1Sz3z65YodK4AJlDSjKV
	 DWMuMP3jICXvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8AEE644C
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720003358.25435.4047949761018218698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97b32b11ff68d4ad09683f61b986bce0ae90269b567402d804df1fc1341da6a
Date: Wed, 31 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767200033
