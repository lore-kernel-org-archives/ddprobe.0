Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EAF2F3D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772C2C433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670596287;
	bh=mE8ZXRA88O3KMsLbC7hO+aqnyuu6tdWWTQ4NeUKO4Yw=;
	h=To:Subject:From:Date:From;
	b=Ucm4FDf8o2rP1jS77V2e434BHaU17HnDmjCpayZNbYjMiryyt0j4StKWqeK1Ws5yI
	 eE/OpiF8Vhu52F1bLqUYUDOMVy/arnflS3wyJExMnklF7DdLxumSAoEER2aLryjU6z
	 tBJcAhdC44NiUDij9uZYjm0lGbqYIrf4ZRIk7BmAsxaN6gimZ9oD1kljC8n/bqa6PK
	 RvQe0Z1thMzItrOjqnnlqiSoNa18+HBN6szo5X/4MzOqYCPcudlOxJd6M0p78i2doP
	 lSG9mq4EDXi0hdKP/ZMcL8cBpvsEvlU+eNdMqRCd/syZEQJBMYeRuQRlJmNXNKqk8Z
	 pl1gv4H+YNo3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8C4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059628738.24485.4784640716756868082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8a6f4af5f4f2fda59efa7e56bb51572fff2783adc3830f5ccdf5b16eee71fc
Date: Fri, 09 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670596287
