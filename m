Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35474165EE4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726572954; cv=none; b=BtIQvKY62UxPLsBpnBLlcFochW9k5OAUzHbbXH4pwewfVbDbge2OgxgJ5rukF0zOkZVUxEpuIJ5YphlpTVWnm/iZFiToUzFgz63LXtSIm7S8n6Wrb6O+IPwV69UzuO+Sf/xkoV8qMnq0i1Nnfk4rEmpBVdRrksmf5Bwzobb3pAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726572954; c=relaxed/simple;
	bh=QHpl6x+yNrjrQcArWlTqlyrhxVUtyAEP7o8aNUBskSw=;
	h=To:Subject:From:Message-Id:Date; b=Nb3xYLE/girWDzn87aceSLWc0ZgOj/L4fULT+Lh/8tWBNhMc8+8C/3mfx6DlAv3dJz6LWCdAfSceGFCmROeHp0QpE1FpAauPrpjlbPtwkhYwzbT+w3DuZfrpNGzrq/Z5lj9R97ixED7zmxYsEi9WWxGSGzbZRl35lYG7y4F4b3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/HDnV+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/HDnV+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03D0C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726572953;
	bh=QHpl6x+yNrjrQcArWlTqlyrhxVUtyAEP7o8aNUBskSw=;
	h=To:Subject:From:Date:From;
	b=t/HDnV+XDpiC8gkG/YZK2NsQw9Xc8QhIGGbs+0RKCHUFBa+ZJoFbcDXIlhGa2yl5p
	 P73SDkbAo03C/K/x0NFIGBPnoLxJ+jCR5twUNPk5PuTYoUm1QlZ9m3jBpVITEC/XQs
	 C9WBUF8/sAaneCvzgmyfrDYYPibvLbeWqNJnGkq2LG2RxpB6i1pKzYOU7liXUoouWn
	 OWvADsocgK5/TN/rxPBZUrL6N3KS12i+GoB73UmTD1+QKCBertFzjbQxxxgk9jBtd7
	 wXcYFAH0B3GYLso9TOepbIIh0Z3qryqXf/Y27K6YZx7LCeP1IVfrahPXsHIBddPvhv
	 /8g0yz0hNSydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC1DC36017
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657295361.16329.8862137485808280238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a149d96262829e73aef5ea7a5d959beade69a1f22da61455856e70f891fe16cc
Date: Tue, 17 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726572953
