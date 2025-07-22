Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EF1219A95
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753184994; cv=none; b=ZyAqrbnjcD+cKAB42xOycxJAxuqhn4V50yq4p+OmgAj1urtY6ubH8ygxYmbo2mLq1vOefNgPUiiOgv4LabZ7kfmwcFFOU4JoDmmqz2UP94JeX9+enlJV1qsMXuXiXf4v8xndmH9U+MYVieSBRu2taTCQoIofa0p5+7Q0RHF7t9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753184994; c=relaxed/simple;
	bh=/ojWThkdplt7XTpAKh48KIKozW8mglmiMzM2qqe4bbI=;
	h=To:Subject:From:Message-Id:Date; b=n8tWMaKEi1IOT6CGGPZOIzsoZ5iAb1yiqJz79PRYMXeHCvXkz1hnSNeZzwhZvSJ9oSYMdtoWg9s4+z+69ekTa2gSIWRdUJvM2ThHJv/8MB3V7EQ+kSRk9xjLM0WLt4DE2wnBhngIVDaR8Rv6ItdjSuZfKi4M/CP6L4t4fz7dtLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVk0fbtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVk0fbtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753184993;
	bh=/ojWThkdplt7XTpAKh48KIKozW8mglmiMzM2qqe4bbI=;
	h=To:Subject:From:Date:From;
	b=kVk0fbtGDYhCdzKr0Dxwmn1aL7FlXbTycyDdMAKNmT7FXCAWVA4bd8Vo+FDIFdQpo
	 K0bhnzp2RsUPDAfZDFVrIr4JfloI5xO/8upb+jOHhM4etlsEVoHdBFqw7BDGVjX8fK
	 gVQI9AvA55cOmVHoe4Pn9639fbGZascDeAZoSeLW2yYpdO3i2v+5lnt9E5m4pMyKfE
	 DhMQzNRJaQ+/BApQt1h7WcXqjhuxD1m/lNwFk6g/ZSWYPDwV4FD2IDuCMZBHY2xRYq
	 8hmjIz6R52Ghfjsa2nzAgqxxtDsbnGhOTugmBZvEUrAbeqHVp9UYc1pIvg8EUQ1IjB
	 sfozuXbcLMqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E6C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318499357.29327.2117880028559743214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5930956554bb2524f020ef35ce3e9ddb44cdf04d5f170528316cdeb9669cdc5
Date: Tue, 22 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753184993
