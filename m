Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA191363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F5FBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670738487;
	bh=Py2Eu1IpaVAC/gzjsRNIHrm3QSbOB8ejVKwH+f4Fv1I=;
	h=To:Subject:From:Date:From;
	b=HZ0hducp1Uw3f/RQLKqZv1z7/l+0jE0OfEJEYwGVLdvq7zYw0275vfz2HtfNHn38m
	 mr22BFjXdl5+4uVJNJzeZ/3Ey5nnR+Gig8gzz9QK1HUG5u9NhmhhF42Vi7QnGIr3GV
	 +cA09L9nwWjCWG4rQn41h3JDwnHKNzOPMGMAowD5XxBval1acq9OwvEWfmz8NxZjfe
	 X/DaaZxF4mWeYuVpCrbb1jlNAtxZ+6wlMkRDxLMhD1307KrfDf79vhmIVuqioS0IuI
	 irMZXyVUZzz2m6B5/AO1O4gTaZdJFoa6LlcMUFNDHWvmGD84sTenHGtJcy65vWPutH
	 wyMKCsLK0MHWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644F1C4167B
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073848740.9583.4438781064004051645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8508ee016f86ee25ddbeebb5266924972c7340602e0a0a860fa2a775c35255dd
Date: Sun, 11 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670738487
