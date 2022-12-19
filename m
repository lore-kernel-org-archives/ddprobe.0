Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62F08F5A
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEABC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671493887;
	bh=rbIrt+Gqyo3PMje1DHPrCVLAqhzCAZfLZJ3FOH8GyHY=;
	h=To:Subject:From:Date:From;
	b=ifi1oT/Ftcv/CmiqwWW2X4tEKHdJpDTebzvc0GfXGEe9QrAso0tvBFOjPJVvfo2If
	 2Asdm6IFJGLXOW5Z9hz9dfW+QES9ZtbTKYBoKS/88PEXTWUFzyhZD5lh+gVIqjKHrw
	 2j+t4KvZP+sIFziq+m2NV0Eg8uBkpUmA/fLtvdrlKsPTMkg/HkE1pSdMaGeBLSdlOv
	 pr7BpZmqoPDHDPTMOoWpfhwn4BPO50cW01wOovkR8f2d+9kI/QnKtgG3xupsGpO5se
	 CqWCxlxzTpJJPtGDGta9/C4M8+UFQ2Vcq6eCXng4Zon1FgYu8Ljjj58os+c4sK7cO2
	 IoBZjyk6cQMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE80C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149388737.8353.15931676044981101507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdc364f8b8339b51f47459718d7551062624f4f830ce25951c69433036e4a85
Date: Mon, 19 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671493887
