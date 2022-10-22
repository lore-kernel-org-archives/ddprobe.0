Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85183D71
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732BBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666456853;
	bh=8MHbz0DOXN+x6jXTbTEPfjMncZeZPRF0/3Xze5eHKoc=;
	h=To:Subject:From:Date:From;
	b=E4jJ7uTjVzaqTqIbg8NBIURTE3u98vBAY/BTRNHQTk1UaLVOe57WCSxCu0G1/EU3f
	 s6xlJ9Ynn2uB4cpZ6o5HIpmt9BrkrQyQrMOhI8+BOIGomMkc6BnhMVvlC5LtpgITcc
	 iBPz5KOCWcID9bVK7DlHsI7FjQ8i2nCWnaq/cbMzlXi8lhG/aauBtw/Aqnq/fWydNC
	 h9L95qyMCl+/1Xad5W0a8VIWZRt4uHXj04kJY1JqF9Hylg/tHNkQUAMd481+8f52Qb
	 ckASvsOG2IBRPKWSvHGn6CT1FJXrhAYeK6aVS5snFGCaN92ZyX1OcoR7plegL6vBNg
	 ZUKHEhjFNruaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5413DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645685333.22650.7140807957979304234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54249f8de47bcdaf7b349983fca8f97ded82dabe89416f5d19a93422d42628a7
Date: Sat, 22 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666456853
