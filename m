Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903A445C6FA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789985434; cv=none; b=RV5ewKZ3dx5Xtw9Ya0DcSv923xv2rebck6AZRBH4iRY1ypy7tTX5G7qA46oNq87cFUbpqtN8w4LIqXYdj+i0tYsUmW+5rwSfFC1sAElKS/aMe9dIb1KCTZqH9F0esqgbrBesz6deauDas2crj7q/OvJBRWMFAlHcdMUxl/TkCMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789985434; c=relaxed/simple;
	bh=oEHsKJBEtFirLXqY1x2pjxFvqZ5+werg6lWAJRzTIvk=;
	h=To:Subject:From:Message-Id:Date; b=lG18JB5F6buQLSTJmLdi8jkG7ZCf2PpKWSN0KuOGSSoLvQuAdoPfFzVAwlGyDg0rfX4ozhRxuZE7MjqoyHjRcFbjCO77KT6ZfEUIcT761Aq2wARLfGxJ4xjNOHex+IAdLnm/aUVxSUI38vDZX6qo2ntcL8BdBwzuaabhBOV4AnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMXw+aHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMXw+aHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B0CBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789985434;
	bh=oEHsKJBEtFirLXqY1x2pjxFvqZ5+werg6lWAJRzTIvk=;
	h=To:Subject:From:Date:From;
	b=WMXw+aHY/FkKVc1mf6XJbo+rBTXn0SOs2S3E/hYDaW5799C5Z8uWuU2XVzHnOwQvf
	 1w2tayWu3lpP5ENxKMDym2xDtRcD1kwEqMsE7Mi+TPbpumNK/3wZVQQ3KXeBV37YRj
	 roPQYYUk2+5s3gNrJgfQ2DR/8Le/uDWU3KB9S1B0xYP3YmmDUsOh0grfTxgFQU80oh
	 +5YA7iyWwlUBVcn3qpzLZEUcdsfouHqA4Jl5oXIgkpMqwolMDd2cPtFfJ8Le/7BL/A
	 crEmCeYQSMmYLsYNpk8MyiuyfgNEdRRsh3IUwzs4tQHMoAXbagvEKEF3YVTKYRS5BG
	 gdX1TkeEgIgGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3174C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998543378.12305.826830680624441049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c773756a6988698d54444f8b3886da67dbd06a7213ab4e2ddf7dfd6bc1fffc91
Date: Mon, 21 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789985433
