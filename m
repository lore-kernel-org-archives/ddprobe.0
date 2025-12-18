Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BA616D9C2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766030634; cv=none; b=mOulkNRHMLuG9Ws/ZDV1ebXwYYKOwr8WTemKSimMS4QRm3xY8UZ/5iWLOlf7j4lCvT7n4T3GkgNJNSSwfzaOn0v+Sf6gWKVBKS4wMQac1JjK/0YteImd+Misf8i5+1WgiuLFZfY7vp4LXsovUSJIiPFo5ubxVkDmXKZwS51DHi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766030634; c=relaxed/simple;
	bh=ygpHcE7QDe/gpueo7EaCVVQkCkKPspiJbKiR2D3npyA=;
	h=To:Subject:From:Message-Id:Date; b=f65KzZbv2CXkLlIer/oEA+AL6saGI+A15nPcjYg1NyX3SK4pfP0UnTb5/Qos9ocJRyoOOYXGMg9eRrfkQJeCktLiEhWMhHsEY0R67gr3hz3jIy4SakwX0jDtwgPXm9X1UtGHbCmZg6eZJfUvC6t/tf9gV/4exVncOI2t8LGGLh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGaFdbRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGaFdbRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1290C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766030633;
	bh=ygpHcE7QDe/gpueo7EaCVVQkCkKPspiJbKiR2D3npyA=;
	h=To:Subject:From:Date:From;
	b=UGaFdbRa9MFrsF0XR/2/UcCbk9d5m5FVm94GTfZYqsW1bahnsgScfYabtr84NdFQI
	 P5mFL/BXcRjjtIISYJIPTsyxLgyZ8n88JJRsefan20+vfyUS6RLF/lE/lHjPch1yQN
	 h6arUhvkPrKT++s7yZX6Yh92P/FO3EqJv2PsezBXyDMDaxsvM1mugjusIFjrOvTp3/
	 cIC7MYZcuiv/HQJMOWPGXv05b7l93+9kz+wW+2YFHfpSIJSdu9H58kEkeo6JoqJdwF
	 5ThkYYvDMhrKOeI8C7duHlbHe1tnrI7fGgVwYrNFfH+ajXK5/NFGshwoMHOPosKhSZ
	 YFxKmJUHr5g/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9068CD68BD1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603063358.3176.10384110906250248807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bab637aec277d4e494184729fae59d37c78112dccda891fb7babdd5dd30d5ba
Date: Thu, 18 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766030633
