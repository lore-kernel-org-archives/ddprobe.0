Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C2736D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728432354; cv=none; b=Z7BnWC1JAt2IakHC+rFhHEYt/iwgfM+wDCnFKXHciwvWcIsLqC6s+LGBG11UoXSD/WVIS8nzfq3Az0RKsNlIBZ/gneTO9iZ1HwKcLH8lyri6L2YGeaK9RAl+h3q9899Nqz9Tu+bGilMkufVhsLp+4KcKBtB1z2F8IrpzFCzio6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728432354; c=relaxed/simple;
	bh=hRUaGxxIWC+eGFtWPSNuPAIzG8S9LYFNJcHNWB2/GZE=;
	h=To:Subject:From:Message-Id:Date; b=SDfw/0FKzeAoDlH7krkP/XSUyyEoNYuOwB+f+9eHMVhpfKY+fnIu+ZqCMQlso0+konVrd/kQRAn5SqKZpCb7SIW51T74sUhQcGBnfieYgV0DNixZi4Ah+BDryiiw1nzorrq28O5YyNUhXa0x2Rfi9LXEIKM0jwkm8LW25sf/txQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHKbQXUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHKbQXUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85AFC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728432353;
	bh=hRUaGxxIWC+eGFtWPSNuPAIzG8S9LYFNJcHNWB2/GZE=;
	h=To:Subject:From:Date:From;
	b=oHKbQXUkk5QW+o/h8N2Nv0/NGl9pgfLHRPEbppTMtL/lu2rw9SMzmIFoXh1os0ldl
	 LZ8loyGmNXNzeROkBnLsCAnmMzUM8ZDitP0MwmL5bM1/C3dvp8ohM4GfndwJqGaxJm
	 XMdili74x+7gqS3uucaVZFJkesHg8P2uuUwQWeYEc/c8FkDG9Y0OFhF8C74QuQiUdx
	 dW1CEeWNLkfA3IFSxD/PcBr8N9YMSpOymLp6YsJn1N3aVi8aGSKgomwgr5vPQZIQXF
	 5WX4TiwFtOHsiJUiOu7W9cTMxfuAOEEYpJC4OjcBqVHxgaKK8PVrenJIOy3UW68fM2
	 2T8C6LjHRkmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEE8CF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843235363.11940.10262886886411692438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24f754daea5bad0935f3252fb57914d7ca43e4cd149182a87a83c2b746c4e03
Date: Wed, 09 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728432353
