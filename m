Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D64136D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7467BC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670404254;
	bh=QOtwadLznLZEGF9bSm+hQPQLib+ChsikmjOr1b2hLi4=;
	h=To:Subject:From:Date:From;
	b=FykptWxKxtb7tkh9WHoP33yiPYHjpqeWo2iBV+09bdRa51NOFoKNJ65iEI08yuYO/
	 hAHv8TIYfzQAtjM1kyivqeI8Z86ZV0XHguTFI8is2Urjf09uOF/78T2WqxODJe6c6J
	 SI3MbMO9idnEiOFfp1wR097BmHmF5YS9yyhpLmXaFfKvRP2NQlaAE2yof6pT5Cfh6F
	 daZX5+iYzijUXCXUNFsBUuspjXUjLSKa6cFX1kAVXeYzzXt2WzCNHvkGnUE1ojMfCY
	 2cqVDnDTv+XVedpIzXPGumoR+YttTSV3oJckP54FOZWUFFo4Umj3corUCYRVVM925A
	 Ew7sSEHrqevhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D8AC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040425434.17265.4288051500635737958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba88436f1e3c304521b0a0abb5fd0c8fb1bb2c8807da16d5341bc1a960c86b2
Date: Wed, 07 Dec 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670404254
