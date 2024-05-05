Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3C9374DB
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714923143; cv=none; b=TAWcCHXxlxwcqAqobxlN+HPdec3JZ1NZg7Irn5Yxte9mHXnarutTO5sYjHnzoVHVlsRY4uCB6+TDdy8o3tjF066HUMBK7mwzc2vRHL1+UTRGgbhubleh5mvFnpWwdLXchjlQRnnZGcm6NnmRiX7klLdL1StEdE2NrjujOc0s5MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714923143; c=relaxed/simple;
	bh=A3H00ZBJLDoKvIIDS72C6FIf+Q5s1CKTlEQb9ia2GVc=;
	h=To:Subject:From:Message-Id:Date; b=M1BRwM/HA9MR/9sFRWMkCdhu4xWvlJiePRJ8dXpuAKwWrlWQzgf0i4JiEN0/d98BjI42f3uKw08y45a9yBVqsVNnG0kc+p8sazOTlHl2vXk6GeWK2fHhL5p/yARLrd1nDBXFDGb9PRoppkx0NS4zNjyBrajMJqvDpxSa0dhWJJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pso3Vb9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pso3Vb9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA7A8C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714923143;
	bh=A3H00ZBJLDoKvIIDS72C6FIf+Q5s1CKTlEQb9ia2GVc=;
	h=To:Subject:From:Date:From;
	b=pso3Vb9ju2jxeYtnwbVrOdUEHv4+oVbYHfW74Dbh6YJFcnEnUnV+60GcH1HjdXC+B
	 1lkTFkmeYM7YTITw6ZXigLLFvHBMg8QrZumkGBibdITCW1eKpNwYpNF3FSdK6h8gvV
	 JNFAfxvnHl8jmbnL73JOl+G8TqhlTeSqYfjLFjBTI7r4zZAajYJ0o9TAwGLzOWWzwQ
	 jf05DNcMa1i9Fu/EDKO7M8f/Wyz4b+YC/8w2cvLqkO0GfZ91v2WRbVa+4ZwkXrXUPh
	 hPJ80WTjNg7NpC8yIbghiy+rbWxBzq0FUpzdYtVz2GBw8es4gn+npBA60C1Y7stoYN
	 PcJyzGaRvPw0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2735C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171492314283.20397.1427652499130504658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f589183f31ce607913d113c256ca833c09829cf2e7dab3db403eb99254ac0f7c
Date: Sun, 05 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714923142
