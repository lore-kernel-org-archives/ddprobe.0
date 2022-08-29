Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7745C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78056C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661794852;
	bh=NtR6+jxRUHVxEozS7NNqLVmR+6xio+uD6eqSSsa+iEI=;
	h=To:Subject:From:Date:From;
	b=uIKAB2Z/2b2+i/MKIbIR2BpqMUaLqjNSpHaFf1+lRV6tagMW76l5om3AsM/iO7x9Y
	 qoRv241l/dE0s85aMrTn8GW64dUEw2bFNydGCNqISBIA8e4mHp+9WukgrCdeKmvJjk
	 osyiS8XuPSlmHSwjRgsBmPY00zS2zG6oQrltuEn104OcEe12WD2k4HE+YXEaOQD5BC
	 4pZ5qPyAamo9E2NpdxArrnh1yToCSMRpHyF4GftdiKVOfuFNsaGYoXr4gNZVcg8VIk
	 CHLTHMqZzfE9QRZ2EF14lU4tOADVi7Sf56Ple7Ik3nAwaiGuEGjfF+Ex1OBgpxPqu0
	 asOtp8vGdhW9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56591ECAAA4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179485234.21431.9615652645470275231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62dac948ba699f5d637bddb8302aa0f301991e8f5d39ab75b4a7427cccfc7037
Date: Mon, 29 Aug 2022 17:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661794852
