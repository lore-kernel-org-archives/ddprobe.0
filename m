Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E7F23ED75
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767421434; cv=none; b=Ojfzp64zspT29WuxGNk0q5Rfpb/suMsiXMgggqcu+3w/zd53EeExGlMz/tMeQ5C2SSYH/5uG4AVtieqYvOGAWMZQO24SzJAGGy1qKy73G5K80TTBu0cS12jp2ENiJSeBRtPfloR5C2DFaPvJ4kV0gzrQlTUGl0VE/QjMsNS5m6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767421434; c=relaxed/simple;
	bh=E1FHfntnviIXXk5EOzuwJVzgIX2ExXWr/VmRAJC6ouo=;
	h=To:Subject:From:Message-Id:Date; b=SYOMaYsWDxY7W1IGp2SXR2n9QB+Nw61Hu776VUJOGl2xTz8eDflgfQ/s0FL2kexkMIIFyT3BHaVbHxptuiVs11AU0qvx77M/j1inWjMg2RBYrRYf+4wr8gQeNmbDulLQUWIzEiHdZQXZoyP1hp+nUANIb4zVH43IqdEXz6F3Wvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQwOTy6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQwOTy6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A0AC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767421433;
	bh=E1FHfntnviIXXk5EOzuwJVzgIX2ExXWr/VmRAJC6ouo=;
	h=To:Subject:From:Date:From;
	b=YQwOTy6fBHo/Jj2vmHkE9FDSr2Xc+IyyCLtER4YtlX/XRZ3gpVjpc3Yv7JqADSbMw
	 l9By5ghcKZ2vXKu6FTLobajNDW5OsSuW4yLKn3hS9orTuIa2HWngKyM6Hf2vFPRUyZ
	 SVdTYoCgr+f06l9NdjOn3WEDZBErazc3ghD+/fJhrUOErHNoqB3i47amcTFPxpLfrW
	 znSSHJ/X5MvR2NWJzPwCFqOGp4iWwmpJNAuHY3bTtkaC9WhBjgy41LgjPhVMm7fUya
	 ztQHeytxc+KNNy0wN8yjsDb5HQWiCDbsIQWnqYZxbSYaGgknY1353qpgyKDYZ5KfDP
	 lm7GPpSepfkrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAEFC6171
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176742143359.28934.3067662693940411867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aa794b61a949c7457a301871e534ee9fb4ccb61075a16434a27313abed834a
Date: Sat, 03 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767421433
