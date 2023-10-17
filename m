Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7488015C3
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf/SoYzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697510828;
	bh=Qw7kCEzvTsZikPN662ct65/0naQr1YktZULAJqgUfXY=;
	h=To:Subject:From:Date:From;
	b=Mf/SoYzbBOGunGoSR9tvuaiy5iErdhq9SHf5mryy3TZRVqXWu2qVG9JpDgwHsoq2m
	 GfVqC5bN1CGg7CW1gXMsJT85RbJOnXZKZQTK2oLC8uTouc5JFYj2Alf0b3428O6ffR
	 cYW73CFBYoZHOhc9CvnR5SVzzfyz69vCfMB2xynTsjj/q7cg6Q8wbwVVcXKnQGAvJm
	 WUHKq96MRX6HqOHryaAjpr+Vwy3csiAQcWI/wfilq0OqJaG/7wE4v7XB2+zr4qRKpY
	 yMrocGUxU2oyQuz/Wuv8EacDqkKBnhzAaoZP0mhnh687Yr2PdSNfheo5AYkSPrEYBa
	 9RNyuQhZGX+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57BACDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751082866.9867.7254771502874282052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be832ab0875ad2bee2daa47683aa9d71d5baa56dbe3dafc5920e150edb49054f
Date: Tue, 17 Oct 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697510828
