Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB45C1870
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD13C433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661370052;
	bh=4v7iGOZqDOglluj3nHV96mPBsMQwIlPxz7AJbhExg1w=;
	h=To:Subject:From:Date:From;
	b=Fo02gphO/Bps1rJ9aplf3e3GAxHvRciIva7RzLhBr5B/kYbzGDU4ydWhtpDuMyUBO
	 jML/+7rzGCHpEHZBheGrj3sWJdtYEgDfi3geP1hKVEJNsISyoYfml5KLZhw4M348u+
	 6qC6/hHv4GIQfHR/7v7NNyZiog7a5wKMyTfDTU/cPmZiYc9+UzKm0Z5hPDfQHOOJuo
	 LBg7kfXpBpD2abT38YYUbJAM3s8Nfu3sYI1h/dHNEIMHfBNoSDIprv6TUWUkNllnoJ
	 OLyzpfUwU4os0wo8IPC14IoFWdh/3O3HcsEvfJSm/2ggnj0l4yo+d6xrMxx1n0Kdvv
	 9J3+4jx+jHCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB5CC004D4
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 19:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137005231.12697.8621993942922471604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3e233f42eb37a03f205a52b01650cce1f889bf985295c008f57cf0a8de03e2
Date: Wed, 24 Aug 2022 19:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661370052
