Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DA77B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D81FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667005854;
	bh=kRN0bBg8je0l9oojwGS8fonoH2PmFDh7Tro15vjwTZM=;
	h=To:Subject:From:Date:From;
	b=iMG+4YFs5CMmrsP1UphHB1cEKUgKhX6R7OAXZxbCLLlJKU4sXH/gE9wJKakSL658u
	 EJj7L0Yckwjs9gyYj8MqmKayqPf42OBiTPRfPCAileK+dZ79mrcGhfDiP/v8iOBVG0
	 S1EF1pvWWMYejY0OiA0e6fCnjwRSJVzD7Z7XlBtbUAXGRE4E3Hngz5a/FoPDMVNdQp
	 gWr/Wky30m+inSc0kU5mo89o39raJMtHVeb2TweDv8kFapo7QngDf0/L+SKzUw3qpl
	 EZpQd+9+aIK9e47k3lwCtcOxs6xJz2PbJUTXEuiU03LnBb9gA5eAFc3+81bhzVdeYT
	 fFntNaTKM6Fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5450AC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700585432.14971.861032952510019429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a627dd4f485ab22d09b071fecf7c532181c32c3c3bc2aba6dd048c82b63bd9f0
Date: Sat, 29 Oct 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667005854
