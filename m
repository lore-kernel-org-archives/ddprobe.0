Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A4D136E28
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716218543; cv=none; b=t8NuIIda23xAYZ7vwm5UQFebJEXgcfe8IbEV+GRmZWOWKXsSjg7m/TvLPVzLxIyPE9hWxH+2uybyFcXd3jVtYBNRvIJkWyYGuVN+/J2QRkryOqR37u97R5e81dm/VQZNBcXjiJkR77M/Dalv6wyVba2JSfW04KaMPT4Hv/DxG0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716218543; c=relaxed/simple;
	bh=WmpNwS60X2Bz+W3Kc2M+7AQsU3GK5bc0xtFeCzKwlpM=;
	h=To:Subject:From:Message-Id:Date; b=jEKFy+8dZoqV2bRNYFamuWsAwhO0k650f/hJbtHYEgnWAzx2+cwihUaUpsDY1tsPo0/ahxkaWUqo+FGvMi9NOnKYU+NjT3gHhwlIjrSuiL6uugB/gatjPy2tPbs53KHx5Se3YNltKGL/+am3V2TqXK2LDdQvmGioXXUp/QOkH4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctuoKgqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctuoKgqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D78C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716218542;
	bh=WmpNwS60X2Bz+W3Kc2M+7AQsU3GK5bc0xtFeCzKwlpM=;
	h=To:Subject:From:Date:From;
	b=ctuoKgqr1aWFHKm8w6/bABYL3ngyOW8RsbuVs0NEB1KH7bQr2qrlGPobzLOOWQ/WH
	 yXn8sX3GI39llQiCnQPYAO/GhUN2PswXpYLMG+GSly1kqEKCIBXu3IBfHmppEqf7A8
	 P8WEm01XkyJboh3NbQBEHzSskPU368LFdWrU7M65FnzwO1RUTUsijNTxK+c85X1Tf4
	 KX/h4Kl5Gu5HKlsjX7urspdeuk/YM5sq+uNIUgrFhYjZ3iXChvjMP3L/XqcTWDarsi
	 yFgAyaGvAmfYB8J4J1WTP8CLu3fs/0Pvc6G9tR1bXEVarRSaWo/vx+pBGDN2BYfOLY
	 yBUwMifXYQJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10DEC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621854277.8177.11209317967469146788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280ecd211b582e2c4e63cd1991317ba90d83ace60b8d411114a9189b38fdddce
Date: Mon, 20 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716218542
