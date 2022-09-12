Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F667F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6929CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662970853;
	bh=KeX8UsLT0CtciBlRPmsVuTLe+jQ+e+KFruWhd9oOfq4=;
	h=To:Subject:From:Date:From;
	b=aV8P1z34zG+YbjafmQ2FaVV+t+h2h+p87b4o2kfsDX5CC8u7M2nkTcjkeauWedxvL
	 GZWUvFyC5yeGDIAdIfaNN6G330xQHW26XXVs585/CMREBACYgCZqbFV82Hr4xuypJy
	 /ELJm4NtSV4Hz3nww8t7UO1nHOec1EC0nSjEI3OSB/LJjPAS5T7nY6xeq/hfwyq0Hg
	 O5ov1dGz+ggd+IpGWaJnZM4bO3O9tO3VwWOhPVp222bXgh5dSD6MTCFLMWm3pY93cB
	 Vlrf6Ryti6SexX5nqy5IiEKlTAx5WwZkLk2L/qdrTMCs0/lClcgsogdWhNAM3Xg0yk
	 Npqzxq+iM0pCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526B4ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297085333.29422.6316251628202949020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c2519037a1fa6bed580f7c7b25977e96c4b95cc8848dd3f7b3b9a53dcabc10
Date: Mon, 12 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662970853
