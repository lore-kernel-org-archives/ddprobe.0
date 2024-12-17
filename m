Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2461FA8F2
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734450954; cv=none; b=SGVMGEYr06Xg8bsiyvoy7J8pn5DG0AUO4LK7Hwwkm1QJgvIflipJayLu88KRUaz/3yLh5zrUwQ9JHEiDdnBqdc7k4pIsROYVmroYZyy6/LUosh/DJWc/BPCHbzs6O8f6JJ1zDMyA+xbJ2zfSDPjKux5jA3rx+EFgqXuFuAldQP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734450954; c=relaxed/simple;
	bh=2FdwDBq+sG8F+B3ZjEIg5BRmb02dJ8gS840SzeghEwE=;
	h=To:Subject:From:Message-Id:Date; b=HVuPlmmzcDAWqMb4WijtS4+VRSFrYlJpwvMgBHqzTNdosi+6CSy69pOWQ68LRxwDqZyNoU4RTLMTCHRA9APmq2XZ93yiNOkSSWkKub9+NV6IL7selzSVLQq3TDKurj8Nu0fkpsHhJ2+BXxg07f0tlehAhoVTppBZLR5S3RIA6+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/4HbJVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/4HbJVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4DAC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734450953;
	bh=2FdwDBq+sG8F+B3ZjEIg5BRmb02dJ8gS840SzeghEwE=;
	h=To:Subject:From:Date:From;
	b=D/4HbJVSpoS/9hN2IlR5nXMeyp0NT9Uo+b/RxlJISzaSHhoRWBVvlWG9szq+yj8gE
	 ws3WbKJ2bPsozUjHIpPJur4CjfweSEuSZRJzc8CGKsLQP5oQQmScJWaoRtCjhx+LEI
	 L2aQP9iC6vOpraKOBY9ov6JANCThLJXS3XA8/pUHGV8KMyvTAbI7Mw1YHFINYXRn/e
	 pkEWQZ2xKuHJW7cXc7dD85bD0e/HcBFtoen278ExbstTDFzkqV/xI7oEVBKhcgQZbJ
	 CwTg7X8FDBNlSGUyXfByOdXl9PLx/xngEanCLi9wD9F2sn2/hW4bhT+1nlqtbAY848
	 qoUgJPYtlOJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB9E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445095363.19399.329833689008727754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683e1672791830a83b3b87a4f4c519b7ff55e118b3dbbea51b96479a61b00129
Date: Tue, 17 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734450953
