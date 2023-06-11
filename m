Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC22ADF5C
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4095CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686506526;
	bh=vxToHL/fMTAi5OGQGnBzDZ7iBZDsCk59ViJeouUdF4g=;
	h=To:Subject:From:Date:From;
	b=OqaR/fiESkHrzuU6fQXzns1rS65ioHK+lwsgRbM6Taf0ln2+RBio5I2+6IVrgzGDw
	 KEzsfp9d/i8SRqo3dWOGvENt/QWs3hydisyIwxvWrIngVx3JjNGlBcUFB0EDvzcOnp
	 OaZik4Pv3NiAqhdqHBUcyw3SEihCw7TSKNoohjHKI9EcQMuUqxe/+VUo5D1gTkF0V7
	 itg/kZezt4wyekWUz59un2NKhPyo1aSDsH0UqHnxzqrgwxwAJ7RwyHutRxOo3+SebL
	 IwS2rbDbCb/gr2vbl8LZsuNwYgZCbdnHseTIAS/tDNwF5kdo0a7bxE2jEPQS9YEjQx
	 EEy5Wqdk2pdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E86AC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168650652585.32672.7004833142764919781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476517412a2bcd570633ad7896a166968b255773ed70d27a8f2604db5bedc67e
Date: Sun, 11 Jun 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686506525
