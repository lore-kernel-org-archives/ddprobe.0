Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5068F47
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F4DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671491487;
	bh=uzpGMWO97tI+Xx+YRu5RA2MLKtsEVxf1aUr1pGxU/UM=;
	h=To:Subject:From:Date:From;
	b=VIJiuLbwjplwQdMkG2Y/cfv2oRvhuOhg3ir7ZWG/N7grdPc5QMk6mOu96N/t+jOsZ
	 iqSfC+U0ZvPCaSyKjkAcci1wgdaAMU2YzuIkwApOPpfXUqFToa9S2dquVg8mdi8oNS
	 5IHxKVJbMo7pJtNN29XOiOsFHDYuz8nC9P1tKbeDn1O7oBTdWPA2HritVSvcJsCeS5
	 No6F8ySA25fPTQRBSURH/bC6raqKxpHl2dEH9OX9/opTF5Gjdlek1H9jDfakg2oM+E
	 m1C+IUv9eTGqlA4KK8yOc6BoA7EbPjpEZxLy3GbZ8aTKwOqbcTnzb/qwFWiXd8nTpE
	 T2i7J1HFrXnuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6431FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149148739.11852.9335488642366851680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382a99bdfe272282686df6620f359229585fdab014a60dd7f4b4ab7af1e21279
Date: Mon, 19 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671491487
