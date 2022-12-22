Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC54A15A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F9F8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671678087;
	bh=u3//6xI5Zl799+C9r+0hzrpHKk4u6KJbl0vqCA86MNw=;
	h=To:Subject:From:Date:From;
	b=CbqFwLH50lrhekxf/mJ9bdtwPVoUqJ2HkyNRSPEJCcpv2gTRZ+J/foLmUuBGHx0yo
	 oTY5AL7d2Y1SQX5nqSbY7dbQ3udP5bhTlqYqjZuNXNeswMww7zxNtipxCpqyqTH4tI
	 MrBtJsqhG9MplAbrF29iOvPg5vDOtFQqXbVz51qrVpzkfc7LKm/SuGqi3FBukQabMa
	 H0iZ5RVdDW0vYOzL/RIOeyTj+WXKc3dIm11aliJHLbFfOcj16kxQSKJKvqzby382dJ
	 EtAQ0RD/+BUbdbP5tbmv/7pnyeHnrpKswxvi2KRHoIDpTDERHFholyG86ITiU1CDPE
	 5ZKksg3+RxjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D68C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167808742.13824.7695348208879193533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd2447124ece9350cbc94ba997beb03e44f044ea714bef129521ad8a57288b7
Date: Thu, 22 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671678087
