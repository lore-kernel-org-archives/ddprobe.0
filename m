Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBFA1F4190
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763884314; cv=none; b=q2+2Lzfw0uv64bEvC/5oPEsnYSz59KnzxiUZmZ6saBIDymlVMCfn5ruTKi+e1QoVAb4jUlZCLvqTqy15Wq9Yp5Q/ByfSuoEV/dIlqcm6d/nhLjjkVlht9V7g8fCON9woChlpraREJf8KVHytLUE0/pK3xzzaPWUz+BOT9nJFSbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763884314; c=relaxed/simple;
	bh=H7ZebQWiggEUMLGZSE9l1Cjlakok0r5P0eKnx4pQdak=;
	h=To:Subject:From:Message-Id:Date; b=LWqoOJCZ5FmsS2IwIEBh6VCGc+5vBP5tE7lTBr0KSjWDNz2YgVw6zNuXAedNIqFFWu/KiMhTBxKPwcI+UoyiA7oMhBrYZDKuRV9tyxEUxX43NlcTS9wAjssjX6pcZ6Q2iq0Ssy2QEcAFui347/hZt5bpNYgAt0y42zPXsee33Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvywuVY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvywuVY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72DDC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763884313;
	bh=H7ZebQWiggEUMLGZSE9l1Cjlakok0r5P0eKnx4pQdak=;
	h=To:Subject:From:Date:From;
	b=FvywuVY2IDEs5g0rLzb6XLU2Mx+wQX5lQmqgrPuK8PbJZaeP7FjhefLK8ZuyIHkVv
	 o5C+Bursurx2eG4znVWMU94pPJFtcD/HTj7TiArWHM6mwEdp7Z/XYwifSNpt2hL8se
	 IsW1lneyKEmFuvwsIin+TAww1LoFezoadMJcr0x8qnG5clzQ7TW87dgiMka4pbpsqy
	 Aeameup+jutWTFN239I9xfbrzWBwXqyD5ISMz8TGLghxIROftWXw8nsyZC6NvqqIKH
	 5oHBmXMmcOvH1d9yx3elarSBzV4/M7e90T3gDBub5FEQRnqzpUCXUZt/IKF3qy5u9V
	 5IbyxAMv9b7Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6FCFC26D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388431358.28802.6049213474057616245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cf78aab68a295b58bde365ae13577432ff067c6cacbacab25c68e59f37dc54
Date: Sun, 23 Nov 2025 07:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763884313
