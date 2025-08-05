Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AB7299AA0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754419194; cv=none; b=RVguagZ/eM4Qz4G1CoYgL0aSAx9qsA6oKM1BcxVvbS9cQzDH93eMpfoVQuzmfQfOYcNGpTGv6c3TbrEjBC/oVnGUhh2Y5UhtuvXqjixDNbQ1OfIF1o0Ux9UzJRoxS9Xei4oJdhQN6fQwUS9Lpz/sAI7hoYJ9xpBdBnU3Kj/cwrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754419194; c=relaxed/simple;
	bh=QY9S0Zd3GYGa6aYn1otPumUSaewE/EWNxxZ/yn99yuA=;
	h=To:Subject:From:Message-Id:Date; b=gi0+ktQE7gUzV4gPOkIpfALx76lpRjENB7CQfXaSBm2Eh0Gl7wISI2EKdCg/38enxwFYYS7Y0Fvhm9zD7j1L7eIY7tLIzVR1s5LzwayZegmlgU8VK6QQCTdQjCRydaYDofEJZzqKz/2ZH1QnGdjQhlY8atGDZxF6r0X7zk4Sy9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWW+r77P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWW+r77P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC96C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754419193;
	bh=QY9S0Zd3GYGa6aYn1otPumUSaewE/EWNxxZ/yn99yuA=;
	h=To:Subject:From:Date:From;
	b=cWW+r77PWK5ZvUUPzLDC/AbaNmVESjKiN24pzUL7tIjFRMSZAxYhMlSz3xb7xPK1W
	 puFokWv4L//MUm5z/Pv7peXxW5YHOjD1v9eRBv29HTzT9wlDXcmEjp/QDoMk6kHZqL
	 WfX8tS8LA3XDch29330CSwTmdrgTZtAkDk9vveZd6D6uyGAP56HPvjG5TenBYm8SZU
	 C8mOT04EWN5RRQ4AcEN5kuvbsMuFE1c/RcZO8nH4drCN7+V9x9Nb7AZ6ArCH53GCw0
	 nE/OZ58HlZQVUcIv2/D45z853PQWWowK6SDs1CYVFb1SK0mp+Lq7FWgVx44rFiBv02
	 pGGyG7KAknjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB81C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175441919357.17992.5994279530035720079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d2017ce54edb723bed231b188110079d40da231f6d1c24ad5fb52e4589f892
Date: Tue, 05 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754419193
