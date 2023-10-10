Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513D3390
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrXIbyWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AF8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696908428;
	bh=ikDywmiANZKRXpIoDu4ad5xf5TAB+eMbE4bdAl0W+LU=;
	h=To:Subject:From:Date:From;
	b=YrXIbyWVhghDeS9gUyQaEzCMrmkM38ImHfHmsSVuBzkvUfNCSRF/T6gTqD5HGTV4W
	 5uD9rk8T/vcMLZ8TIYYnzcvO7Nje1hBrIX6TSDAQrj/talyIsNb0jv3pNhubARmtbw
	 nWhACDg0jA02yKzFpPfO8JEZJJABveuFCfPhAbUo9SuLowZ4gt25s8VxVwig2LzXv7
	 CZnA0HUdFgsaklr4Ue1yWEcAx9Y+TCIr+9AVWGunZVd0vsRUWoLNzryfTYzemc+U9y
	 DSFAyTPyCbd9Sj61k/6JepHPyw/sWg39Whto4SfLCTkHoO2Pweq9J/RUMhvZ1M+JS6
	 41tSvNME3ATRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79F2CD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690842867.18738.13144487215036752722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae785656b328357238c4df3952cd6d43b5bf795b8db8a795dc6d5ed8ad8a083f
Date: Tue, 10 Oct 2023 03:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696908428
