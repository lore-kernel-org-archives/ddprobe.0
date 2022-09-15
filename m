Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99F24C71
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE58C433B5
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663270853;
	bh=xRbdqRSRjFD8amrKo1CCSdo0cmqM+aHz7U+ZvqGj3vM=;
	h=To:Subject:From:Date:From;
	b=RdKT8SOIGjPN2OYXLFAjwI0wTzRBqoUSiu5d7pCNtLOs/rRUsUDMkXvzhz6R5OBUc
	 cGcCulzEnkmxFT3XOiZdA+TxUpPAY0aUpX0y6WVSaxu3/2TIdBO+g30XwzozRIptNo
	 WP+FRRNt4UIPO2Ny14Gi7V4qq+aijesMvFK/4zqHaxAg6EAvR72g9D/7Q0X8zBA3Tt
	 y7rOlREYfTNOYNtYtRbN2HgfBqQTHdRyw49Ht0sBqbQRDTEeHAFXsmNU7pIdGy8U7q
	 Wqa6i55iKrir9wmdji7y9BO3N17ScvcMR1hA//av7zXlnQ2AJIB2hYTGept008dXD8
	 2M3379t7Qp/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5748BECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327085333.28132.265725572409800948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a4d019e3f88b0a57cfe25c39225485d0c36f01b3df9505e7e208015ed56526
Date: Thu, 15 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663270853
