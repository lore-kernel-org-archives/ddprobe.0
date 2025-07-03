Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490821C07C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751585994; cv=none; b=eVBGEFae0Cn98/vvb6F2UV4igd7hSDT3fx3O+/ZX3F/yX+fKfaUxq94Ua6x80q1KunljyL4/4AW8IU8H6MC4+Bp+HU8u7q9cqlhR/J6+mQl2a3lkTRP2N5+V7XUiYYbMFw2Fg9VZVbguC1eX0rhkMRK4OsDOaJj/cCc/UOHGfEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751585994; c=relaxed/simple;
	bh=ULrZs4rMzKq8g8tAWjuErO9ErXZk38mmBJjpw3BFNg0=;
	h=To:Subject:From:Message-Id:Date; b=CFyQ1OM/8xSr659QvpXtfq1jWa1TY7CSnNzIu+hBI9MPiGaqsVwHoyX9QEGrjn1mC/bLKoTyXqtLvr31ZSgHOUNvXj8fRkVyQT1vWyeoSq6zA3Hqd0uTS4r7WLa3EdczSP2makKP9gWghGVWspG4VZ5YF4eKUdFOas+fkUobujs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/INqy1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/INqy1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A2C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751585993;
	bh=ULrZs4rMzKq8g8tAWjuErO9ErXZk38mmBJjpw3BFNg0=;
	h=To:Subject:From:Date:From;
	b=F/INqy1U+3HZ/zSDaY/1zAnlJTQsIiuFHgE1r/h3mZv/NhjfkvxJJ3c7Hm4hepYZt
	 Kj6S8K+LJDqzxxGTNaCrNI2LRLj+v71DtMs1ecuEFi4RPQajOYKE0joGE+TRSZqci9
	 nQy/uj9zfjVkMFpD+yzBrwCVKwj1scrpBJ87Xz1ba39MPO4Evlq92RC2e6HhOHqEjE
	 GgDA93YLB+DGBagFP4coypeSrqTjfSK2wtvMADM3K3qB9vKfgIcSNg9makFgvpxXJX
	 Nctu9P8KST/VVjg4oMQXQ4lUps/iCymBIswCZLXSbmEbjjrfRYU9wotbRt8U1Snas3
	 7knNCLiD4/sQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E884C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158599357.24316.15805961000238161280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88375961665c68d65f429524b8423df578a7907c23e036ab1e4745c9dda01e
Date: Thu, 03 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751585993
