Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61558358379
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783972714; cv=none; b=oIHTj/4+8U1oSpxrhoYw5NtkymbjOFvh3kcs/w5OWh7CXT+v3kDfm+WiTbM/yivn0TbjFdCWkOrtct2YINS4560aLcR6Q6HRyXS545spVyiTxigRZINE0Bh2apXmLBD+WG/NzMZSv1p3K6MBp6V2Wi7WVOWJG8GfYWldUKgS098=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783972714; c=relaxed/simple;
	bh=hYcrYhKnfnYYme1q7g4v7wLuL+drT4b7LtuwHdY/KXs=;
	h=To:Subject:From:Message-Id:Date; b=smm3e+5qOFWOF75m31mTe005boEJEhY3Y5VuTZrwHQDJqehEUIeDm4uzW3VgHp4JIvD8FMe3UY/cl9t8jQh6ROrryXDVN0ON9F6BBAJxiK4M7zLQyf9LLn12hkMjHS1dC78IU6fD3VFrpw+ipxWgLdQTnI8pOZygtvCmdPrjJs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqtB8gZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqtB8gZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD14AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783972713;
	bh=hYcrYhKnfnYYme1q7g4v7wLuL+drT4b7LtuwHdY/KXs=;
	h=To:Subject:From:Date:From;
	b=AqtB8gZwlAXTZlY4ES2CnV1E9P/o0uy87EZhyRIYZvin091nCr8f/O8xhfyEgQ2Yn
	 e56OzaQaLelYKgqWX7YP+HDXGyadiqD+zTxg0SxM1BjqyE4cCRW44Uv/xqB/BqnRno
	 yi2Ds7EJZmkn3clvcEZrz3nP2jdS/1xIniXFnHpFhPPGw5kNTICsjwzFYqQBu/PMnn
	 kiunUhVbRJ/+eEseyC8nzt+iLp4iF31hX8ehJ3zOVc7rZ1NolaCXxCFmEXVsbwfJYf
	 3BJtsfpt3ApfUSdyqD+92CaUhVwXtDMo8jzjuUQYxTkuPA2rSyQ+QH9rsvDzA5+sKU
	 v5S0C9ZrHKmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F6C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397271369.12553.2976672002747425409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302ff6c72364c482b229a2f56bd40da5612f21402b7b467b8d90f74797b4790a
Date: Mon, 13 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783972713
