Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355796FA1
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5183C433A7
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679670065;
	bh=DBHOOB1KjbazmUB2GBRUNJgu6j6e+3YhnF+xmMVAmTQ=;
	h=To:Subject:From:Date:From;
	b=Wtzq7TjEZlWPgg9Al9dQs9+PUbKbA0vPRGcPPTE1JBoEWOrUIBglu8o6SQ9j1gYnJ
	 5kybsqkPrYqJo18U+WEFgULrXaX1Df9B0I26qymzyYyxNw312rt7DpXZQ5cSA1hIi7
	 2jakeNh3lZU+8EcAp9sRqRCzDtCJevGryJuethKhb+lJZ3HRSeHFwBRqgUnsGvbgUI
	 PINle9JSD2XCfwX14Q2o8oxqlFN7cF9rO/yDseWVorTFEf4jKG+9fP2h4lW6K8mLa+
	 uXIHC/OvAUJXh5PJgmQqwZSypBQgjTdPI2AufErmwRiyafIsWoBEkkZDqBglynBuIh
	 6awr+FE/Pyxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FEAC77B60
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 15:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967006574.3213.12104672208712244681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6093673e6affdd9335ac55c5ad8350027f69202d99ddc258b6da869a1aa7442c
Date: Fri, 24 Mar 2023 15:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679670065
