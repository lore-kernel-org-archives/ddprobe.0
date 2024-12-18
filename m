Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEE917741
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734494754; cv=none; b=MP4q/hgIDCjDNt170YWeFs0D3bIwmP7akUUiLF/dT8EUY8xrlcu3/KgCbaw7dPQnGlB/+yJLgjpxf1ynEsEEfzv8XpJc90oUQPK3GPjHTb3krKEfKx6NbGEXtiLNLaoy49zkrLnrxZPigwgiXhzmhxiyZJdxlV1jn7YKiji4q1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734494754; c=relaxed/simple;
	bh=Bzvol8jF8Ee5hkWzyuQKUDzE+tw1e0vmbG8vBn7SbvI=;
	h=To:Subject:From:Message-Id:Date; b=gGnMZ8W9V5KCCqBRWbvpB63zAU5gyPXFNBhRMehajsXwEhmG7V4gWlDcVGp/mR2OD/JDMedu2O7CHHUXR8PBHn9iQESJTBDyBP8XCP1e6udpZnm44zaLSX7PwhYOOG2LgZ1kaEd75nAkKBG9Iy+Iyp7q5+8qsqG/Tfy1jdZMDF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJLX3wv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJLX3wv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734494753;
	bh=Bzvol8jF8Ee5hkWzyuQKUDzE+tw1e0vmbG8vBn7SbvI=;
	h=To:Subject:From:Date:From;
	b=cJLX3wv1sqMy8NCCQ3O2pjz+18JDvJ5zOhzRR8b60hfMr7oi45Kz1bNL8On0cF/P/
	 q7bBf/b2EBJYYSoH+3K5CPspHkUB4GBLQ0/nRwyGrMHYzFziBw6q1PdU7df2L3XWeU
	 Q8wZZKWYiUFZ9XNd+NsnGF8+Tse8nTBwriS6ZDbHstVECV3dgBtKQoyWuxzb4suRZi
	 u1cfpZTUTeecDIVMekkqenZlU2pLh0qJ3ek2Vq22W9ztVEgMA2B4CCwuI8Boyni4fp
	 sJtWhOSR46PEdpRoLt1pPEzUwiMklDK32OhO8pPF6rQfMe0LK3MT6tRioJqzS5Wj5A
	 gPYvDfaL0tm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DBE77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449475358.22885.14763794690977915067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3286ba377b44407d27fe533fcaf8340fa851ddf3754c1237dfd2f985be3e235
Date: Wed, 18 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734494753
