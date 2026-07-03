Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F0E280035
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783050514; cv=none; b=jM2TMpgv9duhWSvypzE1AyIjfINhCmSe0Rjp4/+8jcLKcc6dm5fiZHvdGn6VRlM8oxJ9rDbdNLfVarzq88Mh45xFclrY26ePA46vzgUIFgIDd6nzyq2k6sLyvjtAzeNP5wBpTGsVhhQ17D3CamqwUqtdDqFLcu0krr2+SnD+Ius=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783050514; c=relaxed/simple;
	bh=SMiGCgjfiXk90mOydexSBG8IWS8XEvTLKx+fZt9jwHI=;
	h=To:Subject:From:Message-Id:Date; b=jgXsql78NV+hW57TbvQGL+MpoDfZX1SF2YHNvUAGH8o3oqJ6kPCzphmBkUBWDRMXzNVsUKxZ/1oskm47ATvqYjX3+mVu5Bj4WxWY/Yb0cfBt/8lV+IdIeQzPODPUhFjUXXKoVssOLqQQiQQxOk4A5zO0RxCE8L0ZjEtSA5o2PJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEy5qoAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEy5qoAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783050513;
	bh=SMiGCgjfiXk90mOydexSBG8IWS8XEvTLKx+fZt9jwHI=;
	h=To:Subject:From:Date:From;
	b=OEy5qoAsTpMNeo+DJWIv10UkHH5MRxR05BCdRHiiviIDWf/HJJL6oHS/5ovhq9jh1
	 vRAqxPJm06KWigOKVAXnpuM2z1xSJ6KhW8EYwz6Urrh5Z7UaIzMsD8PHyJq4ufjzO1
	 nyl1eUfSRA/B/VhjMvi69fExHruZCmncqG9aAyBPYma/iQq+Egv94uzb9aSzaLa/pb
	 Gu8dWICZo2HkQh6fAOaFTcUua4PuUqP+asBfiLzjiAvYNu+kz+sosoq4ZuEvL9EHOO
	 j3bwJyt+OBVUIiq+Zl0tcBA9EbswLqfZKbBHzfi45L1CPsnd0xGkm1XZLTtZJ6lmxA
	 usRyY0wViBIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC93DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305051368.11353.15790095418446010077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977d927eeec96b9c55e51e73f57cad1baa600926f71e0d4e1d11772b51005d38
Date: Fri, 03 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783050513
