Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F62E22BE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731394; cv=none; b=fvqzzoK+Hr4uxVRcaiGDtDqDJNsv3e7CEaWI6DMraQxywr75xCbRHxwfdP33pQAHY3BznUUzsWypRZ/gEdjnUVhXQWOJPhbsHqYN1Vx18CJwpHhBjF1H2WWIY+CRLj+VCASlAefZDpykV2Zc/4NZV/2CC6iJrMbTXHtCBMTkcAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731394; c=relaxed/simple;
	bh=FoyMSFIUYfg5DJvVinAI2VRkZnvWEXCHAKY2MwlAjMc=;
	h=To:Subject:From:Message-Id:Date; b=UkQ3t5Lxl7M5Wg5DsJ32kYqtunB2qu+zeNE8pZvRNYOi5i/7VdCzZy4daTJ9dGlnPm/qLbgD5QAuBKAFsmklAf7iu6yTPJrCkqMej7vkiu6DIhGbuX9g5lwMRVAHe7Ho3XppLKAM6Y5vw7IkHPAQCTfofncBHyWQhHWgYLS93nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf+LLR+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf+LLR+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F1CC4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761731393;
	bh=FoyMSFIUYfg5DJvVinAI2VRkZnvWEXCHAKY2MwlAjMc=;
	h=To:Subject:From:Date:From;
	b=tf+LLR+iYzsYFB9DnUoyz3fHGGD04dwlFKhDWRNBXQDsJ/F8Y+6hdQKySVY7AgGqE
	 mBSxFcyyaVWu+t+QKkCkGWvtN8Werey3ExbWEKEwy8ZVgzTBqqd4YRTKR7GTA6MAYj
	 BVhbSBaC4MwvK1UVdWP8CHBHWBvYSqzYw/uwSrowOZMU4vkX66Ls5UfJrwKbHKeoiS
	 NdkUip80EUu+949q+tRfFVxYSO2OOjlPvHe287MI+u3ep5nlUW4nb7wtjJd37bU2/V
	 32b+0zlzixPNMi+6MTCnwEl2oh+hD0obZryNNjp7OE9mOhcf4uxPzJEmqB+iekj8WU
	 b2CS0TVwbLkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BFCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173139358.13079.10683135453843201795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fc26cd5f8928135a31067e7c39691711dc759cbbb6e43536c10c36329bb42d
Date: Wed, 29 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761731393
