Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DFCF4F1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746419394; cv=none; b=epLVzvJUAVoXlC+Z9Hm80OGtS/k8c0Dh/yf7D21WYA7S+eZX4a9Bpt9g6q3uAoQk9gk5BmyBxzSU+/lEUaXzuTuOst9ugVhnKVrvclucyX1N4ST9b+Hoj0IOCWWVq52b+1ybH9fnDQXNzH2apl9pwbdmHlNcX+tt6KelIJe6vrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746419394; c=relaxed/simple;
	bh=Kq/nnYzk8SAYgRMvQGMd7YoG9PiOFMHF/owAzsbOttw=;
	h=To:Subject:From:Message-Id:Date; b=lSsD0iXpyd+HVXs8KSi7lXT6Kg5NYCLrJfHfBJDNXw/5KQLglOCSbjEDqIp4XJQBQIPHYVqbO3vt6J2OP2B0YjsAQ2DKMyonLtjWko/XsX5kIghKpH0M/yBZ7FsD5qwzcsEg81sSrIFlc9ylJX04OVgb1E8z6dR2RfNN3uMxC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQVUr21a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQVUr21a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33A7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746419393;
	bh=Kq/nnYzk8SAYgRMvQGMd7YoG9PiOFMHF/owAzsbOttw=;
	h=To:Subject:From:Date:From;
	b=MQVUr21a62HSiliHeOASbEbW9WqA0+NNHWhNwP6P2J8nNW/wHpQFfyKonvgOiDYO9
	 Mcr9OYeHHeet2a4eEhI9xy+5kUDUD6nRkSSbePdt/7Npcs7aQ7RNIkrOq4pOa01yGX
	 8qh2BRx1daTma8rwkdEkRA5Eal4VRSnKubyLfKccLZxEZH5+VqqCmc0eQhPbImaV05
	 2mOkly3WrBWQJ0b1OqDWBFx8U3pUzuzSNJ/gFpudEPlWnR0x1Lt8zw87WFosYKxoQL
	 x12ISKN/leIjgPE89PApDfdLxqonx2VrVwEJp39xHWnBFNMYTCW5VdBoL1EsilB+1g
	 HbOBTD5Hm6M5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDBFC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641939362.2554.8680723619172289212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ecfb829c25070e8da2de78ed7033c0afcc6b7388d22097cd11cbf8154ea09b
Date: Mon, 05 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746419393
