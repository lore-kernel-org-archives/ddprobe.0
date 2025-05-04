Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64FA923
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746335394; cv=none; b=VTc7VIxBaJxASzxj9MckHryRM0cME6H7k/J+obpb2i4ks2Pj+gBX8hmUKmVPDQirxLdGJq6ipq8cKxAVLV2auqWSymn15Q4HC3htVUr8p0FbQBzp0WfMn1ZiVu0/L0K+vwE+uLamSOq8BpPSxmcoWXWbtMU3bhc3Pz/S9Sc8W4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746335394; c=relaxed/simple;
	bh=2r97EeYEq9gZc4wzW7UT2OSUSJppQEBqevLIH0LO2Y8=;
	h=To:Subject:From:Message-Id:Date; b=ZSRjdTa7aeMw9nyt02kTx/nzAoCH8IcVOFkGVvK3mGHfA+6UbFSLu4wgzhdZ2Y2SCFNu4gUqrU/Lt3UaepNfgHKhgwRCCZyJFWCw8OyNDJeRsuBd+HNwdwv+z+UYiD+U0h0rCR8B4Frh9uo35tUhY5XD8ahAyrAEriBEJBhILP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRQkDAAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRQkDAAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA63FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746335393;
	bh=2r97EeYEq9gZc4wzW7UT2OSUSJppQEBqevLIH0LO2Y8=;
	h=To:Subject:From:Date:From;
	b=nRQkDAAczZlXbN4rJ716NwkYxN4CCDBP//paWcpuBqD9lEGxmwKY3XJPVgmTDLiIc
	 Jrec8UbgKbC7qXLAhmJb9IFAL/kR8q6eMwLyn+kX9lWXT7tQpbke9wZRdM6oMIi7Tv
	 zAsIoKrge4/iIOj0ZUUt0Hi6PUL3beQhILTxRwTBAe2JTDuX6drEYVQVkCB/bct4Bl
	 vecoQvhU6BVJp4xw2rQLuJncLtNNjDwGwAJ2L1uFlpt5Gmxuy6AdScqI+tnT/KSsqH
	 xcyTo3jaKWaBi+GjFDuzpOzS4BeNbWUN/40KBjxzBoKestEJisL0kXfXljZ8U8nhPj
	 qjBtaGi6z8/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B0C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174633539358.6290.3271019071271537523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea108e6d0e1d3e87fe6d73487ab189e113acd9bb67eec0c52a43b25beb0ce8ff
Date: Sun, 04 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746335393
