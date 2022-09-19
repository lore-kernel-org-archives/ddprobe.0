Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63877E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7595DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663569653;
	bh=fVoLysiFkwOxClf6PC6Pzi3/FlOBCUCcbEf2TQa4uxc=;
	h=To:Subject:From:Date:From;
	b=q7dUP8ColNFQFhUJr9xwIm7XYIm2wVgnlJgQrY5vnroFhR9LbqVC5/3qgNZOsqj6v
	 QlD9e5Frx/7G+zs1uyNep1wUwCtz2OLsWKdJAue8iBNJVuCzzAhpLZbZPE8IgCR3Fe
	 zWoCTpiBNIcVjopYS6Fi7HFoLqZSZmKRgytLZRyKvdVT8n0m6pXUE35krAR/01tmE8
	 jk5MyKlpj/NFOA920ZXv7nBhWNg4XVMxwXcmWj0jMDfsc3j4oBNnhfRyNBR/Nlxu8Y
	 +WrCppYRehUH3amYTuanxH7nUNSjB2UgPM+EtKcPjB5c4b0scWa6nVSEaLoq8Vr4Qh
	 xI9EcO+C4SiQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59DC6ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356965335.22061.8827535983212389061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653718ad4040a5ab016b5090f04385402f2c458ecc65036334887b705f200f05
Date: Mon, 19 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663569653
