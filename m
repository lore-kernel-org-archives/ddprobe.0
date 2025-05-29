Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5BF15D1
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748479794; cv=none; b=cTO/PVE/zQkD6Ipk7l8xry9Ov02AiPh/vhgcerKCwSHa+uRn+5STHqnkMJ1aVI2VfjTdWLIM653nSroDQX8YurWHXmE7OnDRvBVcWICrz2RtGT1i9qvR4752nlulEg9OoJ6v3E/mkNWDKyeX0wBsdyvip8//vkj8QnHJXsBs/io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748479794; c=relaxed/simple;
	bh=8OssBPBfpWa6gO5dIIA9OmxEbsjhj80RA8tINfPofyA=;
	h=To:Subject:From:Message-Id:Date; b=Yt7GgCRyGwJQ9SiygIKKlY644DvkgTnFtKAEK4Tb1MUZLAthuAWC8bMU8y/W/cXcVy5NApOu6Lxu9QNPJ6VvTVwpJe1wXOe6qcUmZRnCvRXAR08iYDUe4h+pEdR6TX79mwTv8grViyhl4avNM8cBPCheKNUe/M3BZ553+LwCYw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFL3j5DV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFL3j5DV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748479793;
	bh=8OssBPBfpWa6gO5dIIA9OmxEbsjhj80RA8tINfPofyA=;
	h=To:Subject:From:Date:From;
	b=OFL3j5DVXiik8VYx7Uy5lMt4GgdrFqm4lagl3vQzW232bkEP7I0YMaoR8q7FmLF7N
	 EJGIq4WJxqjmrn/GIeQ1WFNMLb+LKbb9WPHl1jEsvvPYzUqM9FMgjoPkweyMZMDVeZ
	 DQdRGEf58Uu94ysPVIJzUNxqnU4AMDteJGt3lqrQDaLvEINCFoUVaz7LPueJREjsEi
	 EbKEZiJAEytm00uoo8AegFsFkmJtMws4EXAZreLQ8vrZ42VoHz6H7uDql5t/JbRbPT
	 h0RigZUhF/90m6sbE4ToRMtsScdrXU2Ftqet64r4+jNzb43z/z8WG/ukY5sd5kkrXf
	 rjJhvDoU0qgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEFDC5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847979357.17685.2549113520629703621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a43355dec9635661b68effba54623a4b1954607505a3428526d529ef92f1d8a
Date: Thu, 29 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748479793
