Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BC0B661
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrEYWHrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9E1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698496096;
	bh=9GByWbC8VeHWK8WHer/dIMpXuKOwVuRiwmxtqY17hGA=;
	h=To:Subject:From:Date:From;
	b=LrEYWHrTmleJka9clcbTCRGKTTnnBe6EssOkkhTdph/9duttF4NJHcS3Z9wiO4yZO
	 +qlDIluKUt58+HRIsH+muMEzoHYwdXZPpweTYgpx4bks/WnEtZfAqte/Acnr54HiD8
	 wzNU4B+dYQPo0eYHtZG/FjJ0GBFXq8guMcpPJWHw40zfKOC+7A5T+efpECV8gD/7QO
	 G+ShTlQP7heuTDg9mylAgzS62NT8gsFoMit26k67iPBwHsHt8iCRcmnyoxUBB22j8u
	 hmh3eyPgO0Pn8vOxcwQo9svIinGnC2kRsnnkMGj5Nn9UEJpTSckwnTiuqKainwWYmc
	 y/siDgYsZ9/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4CEC0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169849609637.28427.3753639042485305182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf14ef9eae063c5df02b97cdfae96fbd002c8dab8c973540292c87612fcd2d00
Date: Sat, 28 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698496096
