Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822A5651
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB562C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686034326;
	bh=RjtNNhr/Ve233CmPoli3zWCEypMbaQXyYPswVbbCEx4=;
	h=To:Subject:From:Date:From;
	b=ZG7rl85Xh7KrUFdfFcTxLS7iUW3r7vP1XqiMFLE9H5xNS9VG5927RJokko4F+8Wqv
	 iWMqtUGQFU7MWQeFJxfcNYzGjMfB5d1RgZMZNgURkJqOdjbd57OSpAUYQQLfxBh7Ga
	 ldUiYb9u8hiYF/Uo4ZTn9ZLb0Yq8qIjre5FyZlxMUIKDhBh9NM1Lh7HuLw23Rhq3jH
	 H1b9Y0a2apvKo6pkkig89tCvSINTbpGuWBOlsEZ+qy3gaTRUsGZ+PBtKfcUDJ/urGO
	 ljAxNJA/8swpPIt8x0E7E1rBENTawRo+xcUa4YugrGPnfilZ/BTubT4AN0WMrwL6VR
	 DXVofVoO8KsjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F81C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168603432579.6138.68454211451021592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0b2b9fab66efcaf4c6499c0771e254f2949e6985744c156d68db55ffabde9b
Date: Tue, 06 Jun 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686034325
