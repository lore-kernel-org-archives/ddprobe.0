Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EA42F38
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C972FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694767508;
	bh=ZqahGPB2yaAsGUxnGS0MBWFYm6tUKGtGj63geZbfiyo=;
	h=To:Subject:From:Date:From;
	b=nKxbGBnRlHKPz5y0jKuHJGNt/7KoZXiZrrOCer1qFwhp7VodM7q1hPiXBbouP0q2S
	 R8sBDCtVLPH0CnKLQ3bAbT+gJ/ibWM8xj/kg7yVPFya4/hQwa0lrKJXrSttT+Feni+
	 dJ2bMzlOpKdcO25kpTxt7XtcMTRH+ykgj3lyObZKQZnSOpJTo2x2kpwbqBVajE5JMD
	 +rmL+TmzHPAK29Wd21wlHH4jZ7BagJBsx9OtjcbEBRH1lTiaDnak2hNiRFSTuAUenC
	 VmzixAscyTnBcew3U0NZ+gKFMZAyonzV3DmQbkeGpZ/kfHnm/gcc9qV987C3DbsB3Y
	 8AzKej6OwVQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D93EE6447
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 08:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169476750867.1730.10039781608844008873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fefadf5a95cc8b371349dba8fa87b8941a52d82159da45a63a9b9a725074cb
Date: Fri, 15 Sep 2023 08:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694767508
