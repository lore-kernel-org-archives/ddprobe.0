Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5172C9E
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90B3FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668004254;
	bh=S1zwBrjsI0ybQlJITx/3a/85n0RKGKLrGPstaiNiXfo=;
	h=To:Subject:From:Date:From;
	b=HrvPY8CMyWxFUJQje2dpY+B6ElyIUMsVicCSV3/D2XFR7NCC1swW2RmMCXSXcocqC
	 8CjLKKLGm9WQktDKi+Vaz/BTUshNgkGexZpenJRmgKXty8FrYYsRaLUYF09ZvcBuKu
	 uwAyUaIodmGFoOMXvXuC5fm+uTAxjFWmpLZeYGxzN2y40g80aII0ftW/+V0Dn6Knuy
	 aP2p1E7enP9vWA6rFof0DgIWrVf0NT8gb8Z7qOiTuMlBlKy6Y1OMrL9XjyPi2UefIZ
	 ctjiM4AE1fxIUT7Gafl9mWy9qN8PNCHP9IXz13ttxMWc70JDmFytpzW7/K/14BsCtK
	 0gTzu+ysTU0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B24C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166800425441.25196.5794020569712303154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cc274cc397ee1f133052cf59c3492b841b871764ccb5777c14f69284cab4a4
Date: Wed, 09 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668004254
