Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0167517C2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876E1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671964887;
	bh=PauySqpaUlhC3DHe8Vdcl6biPcR78EjO2VFvsB5Adck=;
	h=To:Subject:From:Date:From;
	b=bRpdvnDhtFBKBTw0GZHLcefRnZ6LcYOMLBJ5b/9F/qQoUWT/uOrIM2X4nDIJqiP2d
	 CBm6nxjr/1IENxd0aodwLfs4Ui29aYm4Mm5rDXXJc7xdY9jWrhZgr+XfoUtmrsta6b
	 jObHJorZE0NuGCtHTSNoFMtj5oW8y5k09gQjET/SXnnrcRyHG7uZxdOh4dYU/IMxMI
	 C1/94nEm5qxDck3f0vkV/BeX+35KUeFnQoP7uygtN/i4DgUT5LcUOPb1WWPDVJtZZr
	 3GwKWSTtQkdxkVOSdff1TFXs4XOsbJg5WcHd9kRNwjKT7YYleUmxkTDqZzALjB2FuA
	 IeU4jrKVJSrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63790C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196488738.11531.624243601208343983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5f9dd171051084cb26cb1bf0d618dad91ce057014b3a062c829f89a719aea4
Date: Sun, 25 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671964887
