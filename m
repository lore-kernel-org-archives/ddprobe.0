Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C142C95
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717610843; cv=none; b=pwoigvqbnBNFAXyzHoIpU0HePScgsetbUyP9Cvd4bVgAnDnzo5L72sq7k5LPXIm2fQlnDmqQk/t0ku21v1MZbUs1DLW0IaW5kkCgx7SeSUtag7tMBzLorU2lTQNOMsE9uVRAzdOjJdHMQkcg+gmQ+I0w5zW3WCZ8SxI55RPnR18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717610843; c=relaxed/simple;
	bh=+LMx8hqWh4NvONxpskkGodzx1ZFKuqkmEr0yF4u/L5A=;
	h=To:Subject:From:Message-Id:Date; b=nm9I78lNk2XTr1yH/7+8Fr7cGerGl2862Yrvd5bpWpyPYDuge0Ehp/j8A/T1OW7qyaTchkv/CwLSJ0FxB6c+RAraANDuQYOl6XaCHD6wfO50fgtzYoiBX5NzIeS+rHbMFABGTMQ+wJjPVmV/spzEWoLfqENLFFbox/Ok00o+Ksc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYqmaEA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYqmaEA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91E7C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717610842;
	bh=+LMx8hqWh4NvONxpskkGodzx1ZFKuqkmEr0yF4u/L5A=;
	h=To:Subject:From:Date:From;
	b=rYqmaEA6c9+hPIZTrZpvmrHhPKG68tH5HiOzJi99yzOjKwUjx2npy5tBLSh5BuXxP
	 Chv10qKz3dgY/vz5YSC7k9tt/wINoRasvTk6gy7a370dSAaqSbYsI4F3spzrbnjoY0
	 T+zQDGyfM7L+1S1oB42cVgptbhnjopApJP4y8jbDGkVxHBqgfOtJvV/P9kOgFpYHMW
	 8NtiMOiNHGpkMiWVWCg48r/sdYwRFuyYA65DvFvhB/rvPVNdO7Ne7Xk2zbhm8rycgP
	 e6qwQbUygVu7DxPIiQm8llgrBqpDge0HqWVFN/bfDoT4ngOIfayvZiFVCAk/VBpnsJ
	 XLNlAH08H8s9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92C0C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 18:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761084280.5466.7614923099598822784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff8df86c1197e4b1cc93172ea270d51eeec6a58e1b544c8fae5da82a9ebe84c
Date: Wed, 05 Jun 2024 18:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717610842
