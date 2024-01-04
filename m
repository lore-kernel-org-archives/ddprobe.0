Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8F928E09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoq3yhB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FFC433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704392896;
	bh=kh0bbu2SRXExOyCaQBxucQtogxGADwLo91arDJtM2Y0=;
	h=To:Subject:From:Date:From;
	b=aoq3yhB2nUV0VGAEzP7wp+J4YrFcgePrWs+Sxse0+igWzuxD3Cx6hFQuBc28h5kO5
	 G6GpeLpolEsXh6GDsDFHpQw/tj8uUlF9+XF1/EDrJm/yn0W7q2sJfDWb8L+A7MDeXu
	 a8inIiSr/EniI4GOhe+1luLSlW2roDSbSeQCyuD7pDa2VgJCKeeHrV1O/fW2kAiJXi
	 CJgu4hnvl72AGvKcHJo7ePpXeDWDBLT5tlHlFWnnr7BDBpjnskT8eFhfrEufinObqd
	 sZLf6mAD9UdnDKjD8CZT1vGETy/OFs8gMN7+MMcT0SmaELWhwvIcxryoxWPOUe8DxU
	 6pO7emXbHQ9+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89069C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439289645.7381.16860391318766465065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697045e4c17a48aaa5a08408e1af912b8a0e54a2b285774a134a3dba122857e4
Date: Thu, 04 Jan 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704392896
