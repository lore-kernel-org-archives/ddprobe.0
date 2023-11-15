Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207C8441A
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0ecAnJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94DA7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700036296;
	bh=p/uHdpm3grKbr9tu6BYOzlhIbNhmeqev6q8TfM7hKF0=;
	h=To:Subject:From:Date:From;
	b=u0ecAnJgGJIknmhlJTkMulLTzUnAgnu9qE61JhXVvvR5dshEPRbJlLFgMwbk7JG2M
	 9Sjkn/dJcjNFlAVz8qi/imPZ8IVXp89P1eLIJT0mOnoWc6eTiHidASlFhahDLEqjk6
	 S1T/6SJZ8QqNTZIK9/xxBDFcuKNotnpOGCs1KeN3BjzPucVt6aJHas2mIg2GFoCb95
	 ZG90G3saYw3pNdUsTBAcrwCZrNtYRxNKFGiabGFk91Sv8PtOOm/XMh8DAl71l/7/ry
	 /tLNqu97f3Nomfi9dPHkC2IgU7mNUUXAFNf6uRPRPdzOTJlgCC1XNXFF33UM55lSQc
	 bLRJh2Q2RFrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 757B2C47072
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170003629647.6839.1173925959515764379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ebc085a6524d9f60cd817a4d5fee3933ceb91bbde4e80e15718cda4d14823a
Date: Wed, 15 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700036296
