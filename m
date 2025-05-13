Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237EC1E0DD9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747108794; cv=none; b=P1gCh9zYDida8ISfig7pCtekdc16wL7tAlp6hWdvvAxIIuyX5EBH9zB/9OuB+JiHYiQIBRIITa3+0HubO/taxD221Yeda3x2gvonta60BaVUieCHcY4CyBfRSEB9L2K2pxK4XhdFNPAEOECnGo48dxJtxWiIYnVzev6NEBymRpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747108794; c=relaxed/simple;
	bh=Pyo833Cj0BDZzG8bUY9XHebwe5tKq1V1TC8neOhO5yw=;
	h=To:Subject:From:Message-Id:Date; b=LOjUdX7AU+ifvfTX/8Gz83JDtNAVwbmNn7zNJPW3JQHXbi76tl0PI3aWWNZO2QK7SQ2RLvoyPv3DzuNjA8F1LuRYgzPQ1Gfh/7lVtE73vEwTTY3nhZg+Nh5C27cQJNENXkkJQpRrI2r8fI8GkuWti3nw0lFQ0pk8zWQKmxibW5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEe8TWG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEe8TWG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2605C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747108793;
	bh=Pyo833Cj0BDZzG8bUY9XHebwe5tKq1V1TC8neOhO5yw=;
	h=To:Subject:From:Date:From;
	b=kEe8TWG9RB5qEVJgIUP6XFV1rURlNl4l0ZSk0GiVwHddo3+t+Mf4Mqmti3ulJEMJD
	 g9Co91RB20u0+M5cKq0Wk1ZS/DQ9SPIT1MzyWHelg/kbbCvOEqPYTZ5SWPlYzkb7Ck
	 hG0QELCMrhr0nt8a8m22lS9xDv4SLGxvWgc2A89fcwMEZIBztcXMN1cEaIvVQchGTx
	 OakaOHIOjwY6079xYcGmJedRTiVOAxH72D4nWlNt6o28BiS7jjPZOGUwGJh8AAcShA
	 reMN/SEngSl8F/6vaZsYnxa6vd4UVKe1xKhJmNgk1H+OFxIjbrwNjHo146fPxyeSFh
	 5TjcslnP4OZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E69CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710879357.13218.12318820519497478170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0043594961d8f2444c79dcaa2896469f4be76cce001c6e83be68d576586d96
Date: Tue, 13 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747108793
