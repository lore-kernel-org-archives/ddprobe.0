Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E8E20F7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOtRMtGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82099C433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698127096;
	bh=D/ddJxjnl0U5B/wneJAEu6ss9JqAMvYZWlrBiQT5YJs=;
	h=To:Subject:From:Date:From;
	b=YOtRMtGVAqJq0dnQayzUGHk+dcS2tBRUdRLKdmgqoRQuXiQ5LO/HRYCh5fayXvWTK
	 uP8qa6sqOrWhHrx3875JteahEU4+3HGwMjJ5+L5oGmHXwlHM43NfaJYUg1FJ3NtIbh
	 sbMHJ0/mxE5G9eowcTRHTcFLU/su1QcrUpq/9sEQlUhYoQu1lOIfKCl1eDIOpSc7ww
	 +AnzOhflQffXmGVj/dVfjBMz6zIw5N1cGjz1UBdIFWiOn43zQdGkuDlMyy2OHitKVa
	 tSs+1Okun0D119UHh/b2h44wUJUyXwdIIg9RdxHhzbAqZswf+7GoPP9b9yLZpCFKZD
	 jbCZIbLFq4ANQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AACC07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169812709639.29588.13245199510143666709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f8e73800bb6e04e65e4ae36b65140541301e20dc2887a11da0c1feff04a1ae
Date: Tue, 24 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698127096
