Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75C015C6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzOeHxFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8ABC433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705201096;
	bh=X67O5/VecHMzxBFL2lBvwM0tYJNamYBZRAT1GwdZbOQ=;
	h=To:Subject:From:Date:From;
	b=MzOeHxFC1pWzuShE9Bs6R0lMjz0xDGAUN/iDPRZm8Kc7jJqilFjYNXCBTlqgtuVZQ
	 tLWO+mhyTikUyQShm3GlTWqQz8jThD8RwdYv4F3quNc0es0FZ8aZCBXV+CSBMtYKVA
	 ZSpEVl3Yg7NzYWM1faeBIZQ4c2erAuXQaUO7EyDrZN5AKuU7RAd2GHhObeRkn1yyy+
	 YfUGnS4ctSRFA0rwueRZtZen4vSnOZnQ5ZaAyQ9b5IkJtWlaD7DT80unPgvmSZajwd
	 CLuBVYkXN3KovY8f1OmLY6PF+Jp3sWt/KaHtO1RHs/7jsdfl2A0PvPwBJOR1flLo4G
	 TFrYp8LL8Vp+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644C1C4707B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170520109637.12062.9337676630034966770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75be9858f1bec0d8a4e34dc6d52b75c34a4cbc40dbcb2d52d295cdadc2cbfc1
Date: Sun, 14 Jan 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705201096
