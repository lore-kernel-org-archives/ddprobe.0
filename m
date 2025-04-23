Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0054A06
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745374794; cv=none; b=Z5PhIpHyiJW2PopefuaNr8ElA4AJpR11mUZjzhKrf2eMg9sZZpjIxvFNPxMEod5suLTqs22d/a3h4TrqJzvjkJb3fN3pSD+1UEFF8uRZ8Gmf0TBUCHfcZ5f1bWsgXDyUyB+lZ+uX7vKVbJ232Ob7MLyrrQwx8teQgaNfbTQmN6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745374794; c=relaxed/simple;
	bh=ErOdTEzKKuE/J9T5iDghyMI1BgNDnpbZsk+LcUcEbnM=;
	h=To:Subject:From:Message-Id:Date; b=HMSfelvR5ckdelnFIydzOh23fVJq5SpGZpml6JRY5pwFsZDur8CraaVhX3BQvB0JBsSjoisPgy/kOitoU+Dz1TRhNc796mI0C2CMBI9h3ETLrrms0RM1U2XLtFFdxcM5SmUgzsX+QEus/oehttPJ7Ym1ly0t9RsLYwuBsI+AvLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9XtDo8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9XtDo8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F56FC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745374793;
	bh=ErOdTEzKKuE/J9T5iDghyMI1BgNDnpbZsk+LcUcEbnM=;
	h=To:Subject:From:Date:From;
	b=K9XtDo8vZbcm9gYn5oGlUndDjHHZihtrQgiyDu7Xxd4bsYodI5p+0u4iS5HYto2cs
	 ov+CAGWNj9zpp5TlQsJwJVD+rABDZGikKzmkf9TK+Kvn/LmeuH3YsES96hxwTOy09i
	 0xZ6Jt5cIxvcKaTQA8VWi5EHmV1AhqPYB6dtupVJ3MHcfDtiRekT+3dIVp8NIIAmJx
	 2cFPenln4a/9BlfItO9naqotULtaAVMWkcw8T+VHeNT9W50D0QvmECiY4JiYDJLuNx
	 2Alh9sFaWJuOsvUp5bADSwIdsuM3PRGI6WSs3/jRP8ncHryJ7oswEbRGzACS6nTSMq
	 eIw6O0zOm2+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9AC369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537479357.25509.16461460722396745914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b867b8ff63fd0314bc567f96bb6a86a427cdbcdcd7357316f6bbe8236c76846
Date: Wed, 23 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745374793
