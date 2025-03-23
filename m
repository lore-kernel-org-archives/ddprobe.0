Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C062E339A
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742741396; cv=none; b=Hk42LqMF1J0gJHz0vk9eNFQjjSVVP9wGENqXt0g0Jiqr7mHXj5McT0qw/+csMVdnxojVm6MPnsCvKwac70LhUeh47Rv3CdiYa0chubj05M1UmZBAO5NPotmSLaqyKVu3ssMRcIOVdnTkSZdDMvKCRI6ELwWfLsjgKDtyWKdzaTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742741396; c=relaxed/simple;
	bh=EadKP7byuhLY+oEpVwi7djy8XgH9ADqhIq9EdODHrpM=;
	h=To:Subject:From:Message-Id:Date; b=h4KbMgMamA5OjlDNGodneAHyW3zrszqJT4JZOpoywQ0ypYLmqZFlx6m2eMN4QmrbGylK5Y0bpPoBh8sXRwSPdSEx172/97O5UIpz28ebVyZtYwu7Yf20qmcAqo9femmPd3GoUz5kO8UyuPInDXLMNy6UaOFnZzt4F6+sqEc9a74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxus0swY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxus0swY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D74C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742741393;
	bh=EadKP7byuhLY+oEpVwi7djy8XgH9ADqhIq9EdODHrpM=;
	h=To:Subject:From:Date:From;
	b=Sxus0swYyYkN+7qB7i61TDDTeNy6Cqq8U++1LVlbJR/t8V4k+t6CQpC57GIRjz/Yt
	 MvkJ3cXj7ntqMYgwbTEQ7yYti6Xup96p1IEItRAyF25MK37nVPdxZCCujE1AA6bxZa
	 XK1+fMif8IzV4xqI3BpSe4GvSgdveYj4LaytsHVXA2PNa2NH8UakQVm7FBkn7Cygwd
	 QZ1Qf1gJ2JVVIv0cku+N1Kb8sxOEt+9yk1PO8gBvbVG/mb2SzQhBYLl4sQvKiOoY9h
	 O3OyalpjKLL5H2MMfo2WKI4Z9+1uE1RTAJHubRz/NLgNHtae4+NnF5HYPmtt3HfsCM
	 BgyMl8bvo5JdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3583C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174274139363.30133.14433086465198350751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a30ec93647ec6159929fbbd5f67fa03afc2101dd3f65ea5b6eddc190daadaf
Date: Sun, 23 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742741393
