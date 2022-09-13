Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAEB66E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFEBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663095053;
	bh=mMpTXl5aP7I6RbRkm42lv0ab4UDZr8AVf8rgqNvv9Ko=;
	h=To:Subject:From:Date:From;
	b=JG9t+h8tVq6eV0mjaVa1bShAynnU5OS1CcuZDSuyj3hW2L/JbCbn7whMxPUvgM23H
	 eabQtjbTKACGSid9/nzn5NzDyZmLQ/tOo6uMdQyc+2+FcVS0s5Z8yt/4s0S8HENIPm
	 uoJjCC8WkxPtQb5nZRGNiWQb81iMvf+PUoIh1wdCg30AZVrTIx1o8CtAv/dTJznpma
	 SUr0SQ/X2kLbS/0FCg5Z8VgN9J8l2R3h5l1xKhp8ubLXKB4al2uGUSLVXD6/16lnpj
	 DQeVepWFQjUXMOrX8hhkTfJmnXj0882ulzdn9eXSg/cddNqtOixBTsa3PfDIERcTqF
	 Wt4FcZ531bVpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D3BC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309505334.23639.16791488000055321411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbbad5381324507b8ad1a90233872d431e8de2db406457a101b26d3aa56a6ef
Date: Tue, 13 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663095053
