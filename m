Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACB13FE5
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKCqy/mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DADDC433C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698070096;
	bh=QbuacoxIXBuu5BequKExHnZXjI2N0oIj1aQgEzrRQSI=;
	h=To:Subject:From:Date:From;
	b=CKCqy/mDNBkfkjmLxbAflTaUniwmvqMhG1qBNuaFq0j9AkIHUTYaxfGK6ELHlzzNx
	 0+fXTg1fVnIBb/a6kZ7gyChNsJfNdlb91ebFuda5vJCGNC44zkwPJ3O7qQSxiaIO2v
	 q4oar+8WYlMbDjgEbKE+wpHm+B92wPJ0FaDpi5QetYagHziZYtg9WxqHlbu1gUt2z3
	 tbEYGjR1M0Z9Fbkz+SoGDg0WzU+Ks/ZinkVzpK15RPVUg4dSAF45jOWdJv7xi6Rj0Z
	 +YAa/9v/GKW28bEPgMLga3TC5LIqiIiId0mCkmrKVPMC4cK1hXyOXBhxHxZp/ocys1
	 YNhAV6BdGPqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FA6DC004C0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169807009644.12259.8412419572677818070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fe74a2177f3849144500c0d5a6e2191700398380fef58c73b5769e1cc784ca
Date: Mon, 23 Oct 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698070096
