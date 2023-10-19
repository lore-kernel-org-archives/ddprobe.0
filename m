Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9010019442
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEmGUkKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0416C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697714893;
	bh=hSe4/L37BO9KcRG3x1B1nHbAcAc3nb6bqUhdlCW79fU=;
	h=To:Subject:From:Date:From;
	b=EEmGUkKkSNb9aINHPeIXCtFD5Efwm2kGiXD6zkAfsv5xfvWu34FPiHbRrSwVt5CVy
	 a9IEcDLpUnXta/9K8XcajUiCb9e3haYtARdp5NJz8Zj9BsbP7PqOFBRRUy+suk1hMO
	 vIlONrwiKZAZdA0ydYt/ZVUMGh7pFXZY60ebNjKPgCs3ZMQOTvY6P5CCzyTE/Nri+3
	 KYtDRQyX7M97ZrI9cXNndsomcGj0E1U663rMGUnBzkAt2JWJXVDrIQmbCaQPAcaqot
	 P75nn3W5Kktav5qwV+JHf+wk9ZAi3uPD5/q/rksAmPE1wauLPRa4lmOoeBqK9M8We5
	 R8x0Tu0eHT+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B93CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 11:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169771489285.9161.7257687781740163778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec871afca59f22fd1d83950806cb8fcdda5ab05ea0ee2639aacfe35823054af2
Date: Thu, 19 Oct 2023 11:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697714892
