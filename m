Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092D32E8B85
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756892394; cv=none; b=pqpkCAcnDRxzep8+NeyUnhrrZ58mShf5MHZqbKvHrbF5+qeJQOsh2XdAwuNfuVvTaRxSHWx81nHLngbRzOIXT6xhK/CUHuu3IeUtodps8Qw841X2BaRETJuiVRx5ByQxanychgFC45/lMb9zF4juziE1WLb79hPv37k+xHClixg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756892394; c=relaxed/simple;
	bh=Rm7/X0pQJqZXTiqlWxZ+yL3LpIuT4jUF+ZinihDJoAg=;
	h=To:Subject:From:Message-Id:Date; b=a8IA79mvTmU3I7G2BTWilKcvPGNpuKN+Jd7J+6Cy7nxNCx+K7UH9h5qJwZeL92hKWklAcDDdGf7fQpGSaNUfcJnPPq0405p2zjT2KBOFGk/QQgBLxvITZDMolzF+xfXRTYA5c+yn43SivVBqS4QBA9kDA6lmaGGlAKIg+ZDpkr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaiHiLUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaiHiLUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756892393;
	bh=Rm7/X0pQJqZXTiqlWxZ+yL3LpIuT4jUF+ZinihDJoAg=;
	h=To:Subject:From:Date:From;
	b=MaiHiLUadw2lqLcxpg7O5g9qcpIom17dPyB1g66WyaYv5atxzcrkKM/7cLMf0kR3m
	 Rm6ELYXIYx/cIe2kDS5CZHcyAnRFOGqfjQx7TqsonJf88KAJSoLwMSsBe4zJnmMPcU
	 UO5RuXMcaG2H6rJGZoQuCVyTjOG9jgK07RFoombsAk3jbd1PNuhJkz13V4W0CmpDeh
	 Qvk+lOhqkxRS5kmbAdOpSdWEfWrv3lfOB8WcTIhdcKb+pMPPb/7DC2mr7hUian8aLj
	 4KnpDgs+FCwq7VkNuILm3D0K0RzC2ROscVQi/RZNRidGaljmoajwdx7s0WpSlZWHqz
	 VK6XOeXP4ILTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E2CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689239358.5982.13112373502968347625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd367c8666aa65908d3e98114808e75cd007cc34264b43dec8d3aff56ad242a0
Date: Wed, 03 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756892393
