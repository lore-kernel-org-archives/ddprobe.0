Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C33612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEA1C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662760253;
	bh=TUdDaxx4teD77BPGb8zzi1op/3LMxd7tvcCjxhgvTNo=;
	h=To:Subject:From:Date:From;
	b=ZKmQ5iq8QgDILxvDOv3YdWbZkgyHNFh5b2W0fvwKkWx0SwWp1m6r1CU9ioUEVonK0
	 mUtfic+zTTKQdM98brzCYjaC0a4n6bIadYym2xQ65RZevRHRp4KDrb8fribtpPfG9w
	 WV2jBc2ic+Q31qrwjskR/hjrK9NIRV0p/MZThq5Ec1605wPC2eu3UHfvk86KYj7tAp
	 64Fct6WodHiWRaFqKnJ92y+bphazL+lXv5CM2LFW6Qn6K/v2gKJNCRzvQPe/OPGWeG
	 7ma9q0LuVSII6hgE2SHQQ/Vdox9G1NUTJF3QsTHVsHJRkuFKDQPP6nSZQMydx5eSZL
	 1iuq8pN9vWKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60102ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276025337.11622.4850322520905077912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d3cea1709bd9161aaef776c24d7331c9fdbceb9f1ceedb1679ced890a772cd
Date: Fri, 09 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662760253
