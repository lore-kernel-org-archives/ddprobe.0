Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B180E7C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC41C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668677454;
	bh=oha+XOKPJruIGxLzvC9PgCazK5LPpOSlE3BmqrrETbo=;
	h=To:Subject:From:Date:From;
	b=XRGy4jPxsupUbK9XqnPK8C4iTRi311A2+VdiF+QkBUtyCHB7CrZsKEqE/JRJtm8vk
	 z7ewRYKZdbRFMWsIK/8TdkK2RfQcP7nwPhjt9Ybf/mR39+XyMEo0IMwQ2E59nvsIh6
	 pipK0FCZNXg0s66iZmb3tYPinoFip951Al055EljDRjLTRsdF/CWzKk5JGXsU7cO1q
	 zlKh2EgpYHQz4DC91ApkOJY3WhOIsxbKiJYQt/sCvNLadERzTqqBvkqWLiCPHGLY7M
	 ef4yV/z+9tVa5LjvrYSPmBlyqNCtB8FzofL/qe3cj4aSp1WFWwuYeKtSu70CeAJ9UD
	 FJeEPj3uOJZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E9DC43219
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166867745435.9984.8495982551983366204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3027d0f312f3826b748b3617d1c93e6a2f36d0b84625eacee82be3de65032bd6
Date: Thu, 17 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668677454
