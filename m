Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05A67E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65577C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667231454;
	bh=L9oEeiNZm7i0hssxTrIP2e+d34Q25K1cSyhVlLle0wM=;
	h=To:Subject:From:Date:From;
	b=p7xhOv2KPALG6BM3ZfYRhzbAQkaQ6mjS0It9F/dzfd8mlAR4mbc97G+ddbneq8IW4
	 zxs1pqG8DvECRFAntEDlnE2cyRcPzoSHKrsXp7Q4Rh5Ibnfho9uBaoCD2fQFZfSs6r
	 J0TOghbWUP6lDeROTIzFV+jupREtf1e6zMmdRrv4NEtq7ZsPbbw/ggUKg+gvX8jweY
	 5FN36rUFKLzLfSIGEmmWfj1YOmCMSs5kl814/jXV6Y69T/PuQKfrkxMUXGapcbWnwQ
	 OIABUW/J38JhEpXpSA4dWi8Q9b3PJB746lkzHrn6JH42bH7ddzsiJwaiphi+P403ky
	 h5yT4CCPjPjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECD3FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723145431.9562.13860453029346332427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96047722a56819289cf232c7f0fd36ecc9f8f6310ed1e2782386c99e50b487e5
Date: Mon, 31 Oct 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667231454
