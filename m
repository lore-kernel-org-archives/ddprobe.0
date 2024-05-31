Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C54885270
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717148063; cv=none; b=lYoHNj/c/XkuQzfI96HQCpabYLgsLr0xLEvHbLqcdlaNzZ00O/RJiyDZVHtQ94HKcd6QkTKOENmASBSLV4WuXT1fItinCZJHjQiuEwib1quIDxZoRAweg2YF8BSV7Ch3jGA6d7psg97a4ath+YgD1k3/0jcGftJZ8GtHlMx1IHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717148063; c=relaxed/simple;
	bh=oc80l7bynUX1BEcjxh65kkJ15XuKfXaO/STpBhRHkso=;
	h=To:Subject:From:Message-Id:Date; b=YOrNsIZ27erzyQVNErPlGvvJjc5G3PmBOsxGqcjtF/WYRcK6NbewvEOUZJHig8Ox+gJb3+tUnJhyTjSOtWA0mBUZkUIIC6DUfw1oFiPozbVWweKX5LcE5rZlVRev1lW1KVJXZHgHt9JIbeaffmHK4uu9GPyKKYp5MV5zXSBb5Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5iw1WlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5iw1WlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6359C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717148062;
	bh=oc80l7bynUX1BEcjxh65kkJ15XuKfXaO/STpBhRHkso=;
	h=To:Subject:From:Date:From;
	b=h5iw1WlTb5WwKDLkNka446ua0eNv1/SaFY1UlhuloTFWyb307EA5jBHNdywnZ1Qxr
	 gDrjlJfBlpjOvnJ1rL7q6r4qHkx/w3UM0o6s2hJTuTlAwpurvTTfAfQp5ff9uT+KTi
	 P9RgAG3xPuUTRimwxv5y1coWog3GAKcTNRfCi95v0SDqo8rZNXG7nHFqyxZVGlBCzU
	 FRTGLaSSWbR9kBBMTt/z1NFgHco+y6RjyvEAQr38JYJZCLHp3jYQmcpuO+fYj23uNX
	 KfoTt5QIVfAq0j0kGMaI5Meu0ZgzJONFcph4/nTopTV/9vmqDpqMItK1KWfz2r2Roh
	 gytdILsDfK+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC6CCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714806281.11752.9295856051971441516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2371738829849ed32a7766f021961f837825c92be68550fc5894c66ba3e8d56b
Date: Fri, 31 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717148062
