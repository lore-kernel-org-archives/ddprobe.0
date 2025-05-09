Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE8D23770A
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746806994; cv=none; b=OYLGk5woyl7abRQjUvmsQROwy2efkpmBea5IuMYabmjpH/FKZq9dOWwfkgbgXEyuAix8yFSQ7ki3vCWak+VNbYo+pnaNEnCgF5wV5a0XGSKVu8x2xG4rK0qYqZtV9rhQfMl3+IaU9WN9zqKu++no1bf1i9cOYyVdThkyL1Hjr6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746806994; c=relaxed/simple;
	bh=YgQ236idOi6plTAJC+HZnbn2658/PsGeDCK2F/e3LXo=;
	h=To:Subject:From:Message-Id:Date; b=AsI272UNdzUkgBJhc0uJRLXQYsUrudanJI0AvTUyS4ahJXKNX/vpm4kfGa0wUtKO5eXooGJQN/RPyh1hC+ITD/61agih5aULlqDPGWm9c9+f9JeQWWE+9SGOlfND7/UPJks43pXAVbVNtAIr0Igqyw1ETRzW75Cim5qaTsBlb1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoHFT8sA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoHFT8sA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C14C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746806993;
	bh=YgQ236idOi6plTAJC+HZnbn2658/PsGeDCK2F/e3LXo=;
	h=To:Subject:From:Date:From;
	b=qoHFT8sAEWRsPQdj9aM9rfZgWQ6VzCPL7ZT4hi/6b6PoF5YVdJghdl1MgBIdHPpPA
	 +ZjbiXsjLDygBABQCrGGz08ovvg6Zj5xF6G8wTZxULpmmFOaILdrp5U4NFz6TqCEJo
	 ZfW6oUgXoY28ULg2WoX2+btUh3+DMCTAuDnorFrERe5lGKK2sxOUx6hNbN7A+10ke/
	 Wtrwu2/5lp5lHsTwtv2bsYOd8EWwyOPsOMnT+kHxky2uEb3J9acH28hYz24W1kLyIt
	 xhfM2xglxu7BRKGC5TPIEs7BlDx+7GbcXQMb/YzvabzixAPq5f265K9W0bU8Krrepy
	 D5IWK49+TJppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C7C3ABCC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680699358.9464.11056995869768813721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44b45d451fa754a67acaab11794e42448f7739791057e8486263d855a6f15f6
Date: Fri, 09 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746806993
