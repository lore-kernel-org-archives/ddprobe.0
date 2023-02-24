Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D301539D
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677245105;
	bh=XoQcBhzbeCWDKzq49/aj6qfFWSgShl649vGWui9NWMA=;
	h=To:Subject:From:Date:From;
	b=UHbzLtdFpZRaktrJtfBJj7zD3SQSTbedCFTnLMf6wHw+8UiYOcat/skRyiHrrjXVT
	 fihoYPvo5kB+y9E5Va9H6Al3Qm9bRutfqg0l9P0f61Uy60i1wnHsYa7/zfwolrAxM/
	 ucxz7K4RyQdB5BVwKvJ+oQZTVc9vG4UsL8J/qZIzmvmi/59BSnPuRSwIEX1W0asMTk
	 Eu0IC3F3YAwvgQg0RMzXA2FITk4OnEs/kITTglyZuOb5QlYNNahpKf4LV2o6rzYC5O
	 l4Dh0lJ/JSa1puPLhbC8zPta4G/+hBYAjXhStoyxc4cYDSynBeOidR9zCY2Ygv78ji
	 QY0zFQQ2VWPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE1AC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167724510576.23845.1532491478768232257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9482ce111307244d0b24cc41352bf0fe1366e33c9fd7852ec7df95e9136d559
Date: Fri, 24 Feb 2023 13:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677245105
