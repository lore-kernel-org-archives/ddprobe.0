Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B76B67F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C72EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662871253;
	bh=b08JAB76mhpX8sS1ZNZGzpbQ7rMYLhhBmA+q+2PGf74=;
	h=To:Subject:From:Date:From;
	b=szfz3EkcfjqMobm9D7SefjLmPl42WpAbPYrjKGkNOrOx94r260DGih6mHPnOG9qu4
	 CZ95nIurwruxjRlARErFhVFs+7ne5Z8SzO+JinXcpics5k00UXmg7K2OJyonl9ef3Y
	 YF+YlpSMynABd0xzuFm98Mw4xSB8fjUxMiPJEpePR9T8WRcphSnWZAeYiyUuA3ruph
	 D2xEWjT1QHbqguCY5agdwpnyq/hwoPkiqRC17Clcs1SOYZGLcWTrkyHKZZ+NkQJQ91
	 AYgrhFklMOGG73MPsfl+1ifODEtJiY1w+GjThPpN/hXpFBJ5ApVZ0ODcnbV4GPgEq0
	 bQuSQKTrCnFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A17C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287125333.20774.7476899147408097265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f53abbe92a51748e2580cbb0d8b50a25e2eb7ab5f78718632a942ec78145ab
Date: Sun, 11 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662871253
