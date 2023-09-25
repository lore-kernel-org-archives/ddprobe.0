Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630BC18E1A
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C417FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695641708;
	bh=uxKYoMCwozoxKeWfyLL0xi6znZSwUCNDUeIz+WEu3VY=;
	h=To:Subject:From:Date:From;
	b=YejS0NiuL61tw0m9eYyKWlddqFI0wmw2jxpCibI92lx/nuzUIZxz728fztsxD0oFk
	 WXyxzQKHtLZrN0hmSRNT+16si43kKcSEgTiTQVDoDKoyUTtc+ZQvIhYHcnVgjK67Vh
	 oXnojLEO2vDmT5Yd/H9Gh5qXbV04ZYHL6iG8LoAMPQleO1CYGvhd2YH37QXeac4Fnf
	 Yaccmv5QiSqtZAwuQC22PfoKoKaYImlqUh6qfPlX+caLG8IMK1XssZxRArS00Lajhy
	 XyeqBrWmWAoe8vDj6SUFPWL7aZ/qdpDIbHBIHksi2mA3E8yXbv1iocd+vFJPwjxkcT
	 dVDNBTU9Pn1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E8CE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169564170868.2748.1551062658074878527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5099c6d7e64583ebce277d8901a82a91d78909afc7e5fbf2aa3b61254f4fb686
Date: Mon, 25 Sep 2023 11:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695641708
